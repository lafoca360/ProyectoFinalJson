Feature: CP1 - Put comment from url

  Scenario: 1 - Put comment
    Given url "https://jsonplaceholder.typicode.com" + "/comments/" + "1"
    And request {"postId": "12","name": "Senel Marulanda","email": "senelmarulanda@gmail.com","body": "Metodo Put actualizar"}
    When method put
    Then status 200
    And match response.name == 'Senel Marulanda'
    And match response.email == 'senelmarulanda@gmail.com'
    And match response.body == 'Metodo Put actualizar'
    And match response.postId == '12'
    And match response.postId != '2'

