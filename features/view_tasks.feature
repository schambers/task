Scenario: Viewing a list of tasks

  Given there is a task "Do Something" with "5" points
  When I go to the homepage
  Then I should see "Do Something"
  And I should see "Points"
  And I should see "5"
