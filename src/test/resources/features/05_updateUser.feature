Feature: Update User API

  @sanity
  Scenario: Check if Admin is able to update a user with all valid credentials
    Given Admin set the PUT request with the valid request body and valid Endpoint
    When Admin sends HTTPS Request with request Body
    Then Admin receives "200" "OK" Status for update user

  Scenario: Check if Admin is able to update a user with invalid endpoint
    Given Admin set the PUT request with the valid request body
    When Admin sends HTTPS Request and request Body with invalid endpoint
    Then Admin receives "404" "Not Found" Status

  Scenario: Check if Admin is able to update a user with invalid content Type
    Given Admin set the PUT request with the invalid contentType
    When Admin sends HTTPS Request and request Body with invalid content type
    Then Admin receives "415" "Unsupported Media Type" Status

  Scenario: Check if Admin is able to update a user with invalid request type
    Given Admin set the PUT request with the valid request body
    When Admin sends HTTPS Request and request Body with invalid request type
    Then Admin receives "405" "Not Allowed" Status

  Scenario: Check if Admin is able to update a user with No Auth
    Given Admin set the PUT request with the valid request body with no Auth
    When Admin sends HTTPS Request and update request Body with no or invalid auth
    Then Admin receives "401" "Unauthorized" Status for update

  Scenario: Check if Admin is able to update a user with Invalid basic auth
    Given Admin set the PUT request with the valid request body with invalid basic Auth
    When Admin sends HTTPS Request and update request Body with no or invalid auth
    Then Admin receives "401" "Unauthorized" Status for update


  Scenario: Check if Admin is able to update a user with first name as numeric
    Given Admin set the PUT request
    When Admin sends HTTPS Request and request Body with first name as numeric
    Then Admin receives "400" "Bad Request" Status with error message

  Scenario: Check if Admin is able to update a user with Invalid first name
    Given Admin set the PUT request
    When Admin sends HTTPS Request and request Body with first name as empty
    Then Admin receives "400" "Bad Request" Status with error message

  Scenario: Check if Admin is able to update a user with Empty first name
    Given Admin set the PUT request
    When Admin sends HTTPS Request and request Body with first name as empty
    Then Admin receives "400" "Bad Request" Status with error message

  Scenario: Check if Admin is able to update a user with white space in first name
    Given Admin set the PUT request
    When Admin sends HTTPS Request and request Body
    Then Admin receives "400" "Bad Request" Status with error message


  Scenario: Check if Admin is able to update a user with last name as numeric
    Given Admin set the PUT request
    When Admin sends HTTPS Request and request Body with last name as numeric
    Then Admin receives "400" "Bad Request" Status with error message

  Scenario: Check if Admin is able to update a user with Invalid last name
    Given Admin set the PUT request
    When Admin sends HTTPS Request and request Body with last name as empty
    Then Admin receives "400" "Bad Request" Status with error message


  Scenario: Check if Admin is able to update a user with contact number less than ten numbers
    Given Admin set the PUT request
    When Admin sends HTTPS Request and request Body with contact number less than ten numbers
    Then Admin receives "400" "Bad Request" Status with error message

  Scenario: Check if Admin is able to update a user with contact number as alphanumeric
    Given Admin set the PUT request
    When Admin sends HTTPS Request and request Body with contact number as alphanumeric
    Then Admin receives "400" "Bad Request" Status with error message

  Scenario: Check if Admin is able to update a user with Invalid contact number
    Given Admin set the PUT request
    When Admin sends HTTPS Request and request Body with empty contact number
    Then Admin receives "400" "Bad Request" Status with error message

  Scenario: Check if Admin is able to update a user with contact number greater than ten numbers
    Given Admin set the PUT request
    When Admin sends HTTPS Request and request Body with contact number greater than ten numbers
    Then Admin receives "400" "Bad Request" Status with error message


  Scenario: Check if Admin is able to update a user with Invalid email format
    Given Admin set the PUT request
    When Admin sends HTTPS Request and request Body with invalid email format
    Then Admin receives "400" "Bad Request" Status with error message

    #Address
  Scenario: Check if Admin is able to update a user with Invalid plot number
    Given Admin set the PUT request
    When Admin sends HTTPS Request and request Body with Invalid plot number
    Then Admin receives "400" "Bad Request" Status with error message

  Scenario: Check if Admin is able to update a user with plot number as numeric
    Given Admin set the PUT request
    When Admin sends HTTPS Request and request Body with valid plot number
    Then Admin receives "400" "Bad Request" Status with error message

  Scenario: Check if Admin is able to update a user with empty plot number
    Given Admin set the PUT request
    When Admin sends HTTPS Request and request Body with empty plot number
    Then Admin receives "400" "Bad Request" Status with error message


  Scenario: Check if Admin is able to update a user with Street as numeric
    Given Admin set the PUT request
    When Admin sends HTTPS Request and request Body with Street as numeric
    Then Admin receives "400" "Bad Request" Status with error message

  Scenario: Check if Admin is able to update a user with Street as empty
    Given Admin set the PUT request
    When Admin sends HTTPS Request and request Body with Street as empty
    Then Admin receives "400" "Bad Request" Status with error message

  Scenario: Check if Admin is able to update a user with Invalid Street
    Given Admin set the PUT request
    When Admin sends HTTPS Request and request Body with Invalid Street
    Then Admin receives "400" "Bad Request" Status with error message


  Scenario: Check if Admin is able to update a user with country as numeric
    Given Admin set the PUT request
    When Admin sends HTTPS Request and request Body with country as numeric
    Then Admin receives "400" "Bad Request" Status with error message

  Scenario: Check if Admin is able to update a user with country as empty
    Given Admin set the PUT request
    When Admin sends HTTPS Request and request Body with country as empty
    Then Admin receives "400" "Bad Request" Status with error message

  Scenario: Check if Admin is able to update a user with Invalid country
    Given Admin set the PUT request
    When Admin sends HTTPS Request and request Body with Invalid country
    Then Admin receives "400" "Bad Request" Status with error message


  Scenario: Check if Admin is able to update a user with zipcode as alphanumeric
    Given Admin set the PUT request
    When Admin sends HTTPS Request and request Body with zipcode as alphanumeric
    Then Admin receives "400" "Bad Request" Status with error message

  Scenario: Check if Admin is able to update a user with zipcode as empty
    Given Admin set the PUT request
    When Admin sends HTTPS Request and request Body with zipcode as empty
    Then Admin receives "400" "Bad Request" Status with error message

  Scenario: Check if Admin is able to update a user with Invalid zipcode
    Given Admin set the PUT request
    When Admin sends HTTPS Request and request Body with Invalid zipcode
    Then Admin receives "400" "Bad Request" Status with error message


