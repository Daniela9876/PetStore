Feature:  Service client PUT
  As QA Automation
  I want to update a pet
  To validate the status code and response

  Background: consume service
    * url url


  Scenario: check the service POST method

    * def updatePet = {"id": '#(id)', "id": 0, "name": '#(nameC)'}, "name": "firulais", "photoUrls": ["string"], "tags": [{"id": 0, "name": '#(firu)'}], "status": "Pending"}


    Given path 'pet'
    And request updatePet
    When method put
    Then status 200

  Scenario Outline: Create a pet with invalid Name values
    * def id = '<id>'
    * def UpdatePetError = read('classpath:karate/Pet/AddPetERROR.json')

    Given path 'pet'
    And request
    """
    {
  "id":<id>,
  "category": {
    "id": 0,
    "name": "perro"
  },
  "name": "firulais",
  "photoUrls": [
    "string"
  ],
  "tags": [
    {
      "id": 0,
      "name": "firu"
    }
  ],
  "status": "Pending"
}
    """
    When method PUT
    Then status 500
    And match response == UpdatePetError

    Examples:
      | id     |
      | "hola"  |
      |  "12*"  |