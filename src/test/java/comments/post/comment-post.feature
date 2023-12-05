Feature: CP1 - POST comment from url

  Scenario: 1 - Post comment
    Given url "https://jsonplaceholder.typicode.com" + "/posts/1/comments"
    And request {"postId": "1","name": "Trabajo metodos Final","email": "comentario@gmail.com","body": "Este es el trabajo final de espe"}
    When method post
    Then status 201
    And match response.email == 'comentario@gmail.com'
    And match response.name == 'Trabajo metodos Final'
    And match response.body == 'Este es el trabajo final de espe'
    And match response.postId != '2'
    And match response.postId != '42'
