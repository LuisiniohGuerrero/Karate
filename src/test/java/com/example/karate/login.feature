Feature: Login

  Scenario: Usuario y password correctos
    Given url 'https://api.demoblaze.com/login'
    And request { username: 'usuarioValido', password: 'password123' }
    When method post
    Then status 200
    And match response == { success: true }

  Scenario: Usuario y password incorrectos
    Given url 'https://api.demoblaze.com/login'
    And request { username: 'usuarioValido', password: 'passwordIncorrecto' }
    When method post
    Then status 200
    And match response == { success: false }
