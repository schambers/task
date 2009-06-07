Feature: Creating a Task

  As a user of the system
  I want to create a new task
  So that I can keep track of what I have to do

  Scenario: Creating a new Task
    Given I am on the homepage
    When I follow "New Task"
    And I fill in "task_name" with "do some task"
    And I press "Create Task"
    Then I should see "do some task"
