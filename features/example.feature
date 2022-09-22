Feature: An example Feature

  @debug
  Scenario: Check the cucumber framework
    Given Initial state
    When action "Example Action"
    Then the state should contain "Example"