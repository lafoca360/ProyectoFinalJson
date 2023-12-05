Feature: CP1 - Delete comment from url

  Scenario: 1-  Delete comment
    Given url "https://jsonplaceholder.typicode.com" + "/comments/" + "5"
    When method delete
    Then status 200
    And match response == {}
