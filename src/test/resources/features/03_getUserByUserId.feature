Feature: Get User By UserId

  Scenario: Check if Admin is able to GET user by valid User Id
    Given Admin set the GET request by user id
    When Admin sends the GET HTTP request by User Id
    Then Admin receives the "200" "OK" Status code with valid user details

  Scenario: Check if Admin is able to GET user by Invalid User Id
    Given Admin set the GET request by user id
    When  Admin sends HTTPS Request with invalid User Id
    Then Admin receives the "404" "Not Found" Status code with valid user details

  Scenario: Check if Admin is able to GET user by User Id with Invalid request type
    Given Admin set the GET request by user id
    When  Admin sends HTTPS Request with invalid requestType
    Then Admin receives the "405" "Method Not Allowed" Status code with valid user details

  Scenario: Check if Admin is able to Get user by User Id with Invalid endpoint
    Given Admin set the GET request by user id
    When Admin sends HTTPS Request with invalid endpoint
    Then Admin receives "404" "Not Found" Status Code

  Scenario: Check if Admin is able to GET user by User Id with Invalid Basic Auth
    Given Admin set the GET request by user id with invalid basic auth
    When  Admin sends the GET HTTP request by User Id
    Then Admin receives the "401" "Unauthorized" Status code with valid user details

  Scenario: Check if Admin is able to GET user by User Id with No Auth
    Given Admin set the GET request by user id with No Auth
    When  Admin sends the GET HTTP request by User Id
    Then Admin receives the "401" "Unauthorized" Status code with valid user details
