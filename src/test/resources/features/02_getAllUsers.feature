Feature: GetAllUsers

  @sanity
  Scenario: Check if Admin is able to Get All User List with valid credentials
    Given Admin set the GET request
    When Admin sends HTTPS Request with endpoint
    Then Admin receives "200" "OK" Status Code

  Scenario: Check if Admin is able to Get All User List without endpoint
    Given Admin set the GET request
    When Admin sends HTTPS Request without endpoint
    Then Admin receives "404" "Not Found" Status Code

  Scenario: Check if Admin is unable to Get All User List with Invalid endpoint
    Given Admin set the GET request
    When Admin sends HTTPS Request with invalid endpoint
    Then Admin receives "404" "Not Found" Status Code

  Scenario: Check if Admin is able to GET Get All User List with Invalid request type
    Given Admin set the GET request by user id
    When  Admin sends HTTPS Request with invalid requestType
    Then Admin receives the "405" "Method Not Allowed" Status code with valid user details

  Scenario: Check if Admin is able to Get  all user with No Auth
    Given Admin set the GET request without Auth
    When Admin sends HTTPS Request with endpoint
    Then Admin receives "401" "Unauthorized" Status Code

  Scenario: Check if Admin is able to Get  all user with Invalid Basic Auth
    Given Admin set the GET request with Invalid Basic Auth
    When Admin sends HTTPS Request with endpoint
    Then Admin receives "401" "Unauthorized" Status Code
