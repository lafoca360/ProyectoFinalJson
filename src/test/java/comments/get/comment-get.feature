Feature: CP1 - Get comment from url

  Scenario: 1- Get comment
    Given url "https://jsonplaceholder.typicode.com" + "/posts/1/comments?id=" + "1"
    When method get
    Then status 200
    And match response[0].email == 'Eliseo@gardner.biz'
    And match response[0].name == 'id labore ex et quam laborum'
    And match response[0].body == 'laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium'
    And match response[0].postId == parseInt('1')
    And match response[0].id == 1

