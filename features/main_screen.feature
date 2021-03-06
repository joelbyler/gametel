Feature: Interacting with the elements on the main screen

  Scenario: Identifying the list items on the main screen
    Then I should see the "Accessibility" list item
    And I should see the "App" list item
    And I should see the "Content" list item

  Scenario: Navigating using the items in the list and the back button
    When I press the "first" list item
    And I press the Back button
    Then I should see the "App" list item
    And I should see the "Content" list item

  Scenario: Scrolling down and up
    When I scroll down to the bottom of the screen
    Then I should see the "Views" list item
    When I scroll up to the top of the screen
    Then I should see the "Accessibility" list item

  Scenario: Pressing the enter key
    When I hit the enter key twice
    Then I should see the "Accessibility Service" list item

