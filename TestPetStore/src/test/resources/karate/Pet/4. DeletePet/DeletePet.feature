Feature:  Service client DELETE
  As QA Automation
  I want to DELETE a pet
  To validate the status code and response

  Background: consume service
    * url url

  @PositiveTest
  Scenario: create a pet with corrects dates
    * def DeletePet = read('classpath:karate/Pet/DeleteOk.json')
    Given path 'pet', '305'
    When method DELETE
    Then status 200
    And match response == DeletePet


  @NegativeTest
  Scenario Outline: DELETE a pet with invalid Name values
    * def id = '<id>'

    Given path 'pet', id
    When method DELETE
    Then status 404
    And match response == <expected>

    Examples:
      | id    | expected                                                                                               |
      | "12.1"  | {"code": "#number","type": "#string","message": "#string"}                                             |
      | lupe | {"code": "#number","type": "#string","message": "#string"}                                             |


