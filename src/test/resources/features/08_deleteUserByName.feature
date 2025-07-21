Feature: Delete User By UserID

  Scenario: Check if Admin is able to Delete user by valid User name
    Given Admin set the DELETE request by user name
    When Admin sends the DELETE HTTPS request by User name
    Then Admin receives the "200" "OK" Status code with message

  Scenario: Check if Admin is able to DELETE user by already deleted User name
    Given Admin set the DELETE request by User name
    When  Admin sends DELETE HTTPS Request with already deleted User name
    Then Admin receives the "404" "Not Found" Status

  Scenario: Check if Admin is able to DELETE user by invalid User name
    Given Admin set the DELETE request by User name
    When  Admin sends DELETE HTTPS Request with invalid User name
    Then Admin receives the "404" "Not Found" Status

  Scenario: Check if Admin is able to DELETE user by User name with invalid request type
    Given Admin set the DELETE request by User name
    When  Admin sends HTTPS Request with invalid requestType by User name
    Then Admin receives the "405" "Method Not Allowed" Status

  Scenario: Check if Admin is able to DELETE user by User name with invalid Basic Auth
    Given Admin set the DELETE request by User name with invalid basic auth
    When  Admin sends the DELETE HTTPS request by User name
    Then Admin receives the "401" "Unauthorized" Status

  Scenario: Check if Admin is able to DELETE user by User name with No Auth
    Given Admin set the DELETE request by User name with No Auth
    When  Admin sends the DELETE HTTPS request by User name
    Then Admin receives the "401" "Unauthorized" Status