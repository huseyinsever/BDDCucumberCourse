Feature:  Citizenship with scenario Outline

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly
    And Navigate to Citizenship page

  Scenario Outline: Citizenship create
    When User a Citizenship name as "<CitizenshipName>" short name as "<ShortName>"
    Then Success message should be displayed

    When User a Citizenship name as "<CitizenshipName>" short name as "<ShortName>"
    Then Already exist message should be displayed
    And Click on close button

    When User delete the "<CitizenshipName>"
    Then Success message should be displayed
    Examples:
      | CitizenshipName| ShortName    |
      | nrr551         | nrr551       |
      | nrr441         | nrr441       |

