Feature:  Service client GET
  As QA Automation
  I want tto create a user
  To validate the status code and response

  Background: consume service
    * url url

  @PositiveTest
  Scenario: check the service GET method
    Given path 'user', 'login'
    When method get
    Then status 200