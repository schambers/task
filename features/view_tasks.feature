Scenario: Viewing a list of tasks

  Given there is a task "Do Something"
  When I go to the homepage
  Then I should see "Do Something"
