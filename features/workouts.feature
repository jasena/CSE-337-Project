Feature: Manager workouts
  As a workout database user
  So that I can create, update, delete, and list workouts
  I want to manage workouts

  Scenario: Add a workout
    Given I am on the home page
    When I follow "New Workout"
    Then I should be on the Create New Workout page
    When I fill in "workout_name" with "Running"
    And I fill in "workout_kind" with "Cardio"
    And I fill in "workout_workout_date_1i" with "2013"
    And I fill in "workout_workout_date_2i" with "January"
    And I fill in "workout_workout_date_3i" with "01"
    And I fill in "workout_duration" with "10 minutes"
    And I press "submit"
    Then I should be on the Show Workout page
    And I should see "Running"

  Scenario: Delete workout
    Given I have "Running" in workout database
    And I am on the home page
    When I delete workout with name "Running"
    Then I should be on the home page
    And I should not see "Name: Running"

  Scenario: Edit a workout
    Given I have "Running" in workout database
    Given I am on the home page
    When I edit workout with name "Running"
    Then I should be on the edit "Running" page
    When I fill in "workout_name" with "Curling"
    And I fill in "workout_kind" with "Cardio"
    And I fill in "workout_workout_date_1i" with "2013"
    And I fill in "workout_workout_date_2i" with "January"
    And I fill in "workout_workout_date_3i" with "02"
    And I fill in "workout_duration" with "15 reps"
    And I press "submit"
    Then I should be on the home page
    And I should see "Name: Curling"
    And I should not see "Name: Running"

    Scenario: fill out survey

