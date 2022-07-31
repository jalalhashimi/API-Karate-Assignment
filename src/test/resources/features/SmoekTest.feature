@Smoke
Feature: Authentication Smoke Test

  Scenario: Generate token with valid username and valid password
    Given url "https://tek-insurance-api.azurewebsites.net/"
    When path "/api/token"
    And request
      """
      {
        "username": "supervisor",
        "password": "tek_supervisor"
      }
      """
    And method post
    Then status 200
		And print response.token
		
  Scenario: Generate token with invlaid username and valid password
    Given url "https://tek-insurance-api.azurewebsites.net/"
    When path "/api/token"
    And request
      """
      {
        "username": "supervisor123",
        "password": "tek_supervisor"
      }
      """
    And method post
    And status 404
		Then assert response.errorMessage == "USER_NOT_FOUND"
		
		
		
		
		