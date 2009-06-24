Feature: Viewing the tasks

  Scenario: When viewing the list of tasks on the homepage

    Given there is a task "Do Something" worth "5" points
    When I go to the homepage
    Then I should see "Do Something"
    And I should see "5 pts."
    And I should see "done"
    And I should see "Your current weekly score is 0"
    
  Scenario: When viewing a list of tasks with a completed task
    
    Given there is a task "Do Something" worth "5" points
    When I go to the homepage
    And I follow "done"
    Then I should see "Your current weekly score is 5"
