Feature:  Service client POST
  As QA Automation
  I want to create a pet
  To validate the status code and response

  Background: consume service
    * url url

  @PositiveTestAdd
  Scenario: create a pet with corrects dates
    * def AddPet = {"id": '#(id)', "id": '#(idC)', "name": '#(nameC)'}, "name": "<name>", "photoUrls": ["string"], "tags": [{"id": 0, "name": '#(firu)'}], "status": "Pending"}

    Given path 'pet'
    And  request AddPet
    When method POST
    Then status 200


    @NegativeTestAdd
  Scenario Outline: Create a pet with invalid Name values
    * def id = '<idC>'
    * def AddPetError = read('classpath:karate/Pet/AddPetERROR.json')

    Given path 'pet'
    And request
    """
    {
  "id":305,
  "category": {
    "id": <idC>,
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
    When method POST
    Then status 500
    And match response == AddPetError

    Examples:
      | idC      |
      | "iduno"  |
      |  "****"  |
