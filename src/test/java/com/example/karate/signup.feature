Feature: Signup

  Scenario: Crear un nuevo usuario
    Given url 'https://api.demoblaze.com/signup'
    And request { username: 'nuevoUsuario', password: 'password123' }
    When method post
    Then status 200
    And match response == { success: true }

  Scenario: Intentar crear un usuario ya existente
    Given url 'https://api.demoblaze.com/signup'
    And request { username: 'usuarioExistente', password: 'password123' }
    When method post
    Then status 200
    And match response == { success: false }
