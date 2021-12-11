@LoginFeature
Feature: Login Feature

  Background: Open the login Page
    Given User has navigated to login page

  @Regression @Sanity
  Scenario: Positive Login Scenario
    When User enters correct uername and password
    And User clicks on the Login Button
    Then User should be navigated to the Home Page

  @Regression
  Scenario: Positive Login Scenario with Parameters
    When User enters correct username "abc@xyz.com" and password "Abc@12345"
    And User clicks on the Login Button
    Then User should be navigated to the Home Page

  Scenario Outline: Positive Login Scenario with multiple users
    When User enters correct username "<UserName>" and password "<Password>"
    And User clicks on the Login Button
    Then User should be navigated to the Home Page

    Examples: 
      | UserName    | Password  |
      | abc@xyz.com | Abc@12356 |
      | xyz@abc.com | Xyz@45690 |

  Scenario Outline: Negetive Login Scenario with multiple users
    When User enters correct username "<UserName>" and password "<Password>"
    And User clicks on the Login Button
    Then User Should be getting error "<error>"

    Examples: 
      | UserName       | Password  | error                                              |
      | abcd@gmail.com | Abcd@r123 | The email or password you have entered is invalid. |
      | fcdf@gmail.com | ahDf@4123 | The email or password you have entered is invalid. |

  @DataTable
  Scenario: Positive Login Scenario with Parameters
    When User enters correct credentials
      | Field    | Value       |
      | UserName | abc@xyz.com |
      | Password | Abcd@1234   |
    And User clicks on the Login Button
    Then User should be navigated to the Home Page
