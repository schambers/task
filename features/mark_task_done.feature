Feature: Marking a Task as done

  As a User
  I want to mark a Task as complete
  So that I can remove tasks from the list

  Scenario: When marking a task as complete
    
    Given there is a task "Do Something" worth "5" points
    When I go to the homepage
    And I follow "done"
    Then I should not see "Do Something"
