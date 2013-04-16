Feature: Manager workouts
  As a workout database user
  So that I can create, update, delete, and list workouts
  I want to manage workouts

  Scenario: Add a workout
    Given a valid user
    When I go to the login page
    And I fill in the following:
      |Email|username@example.com|
      |Password|password|
    And I press "Sign in"
    Then I should see "Signed in successfully."

    Given I am on the home page
    When I follow "New Workout"
    Then I should be on the Create New Workout page
    When I fill in "workout_name" with "Running"
    And I select "Cardio" from "workout_kind"
    And I select "2013" from "workout_workout_date_1i"
    And I select "April" from "workout_workout_date_2i"
    And I select "1" from "workout_workout_date_3i"
    And I fill in "workout_duration" with "10 minutes"
    And I press "submit"
    Then I follow "Back"
    Then I should be on the day page
    And I should see "Running"

  Scenario: Delete workout
    Given a valid user
    When I go to the login page
    And I fill in the following:
      |Email|username@example.com|
      |Password|password|
    And I press "Sign in"
    Then I should see "Signed in successfully."

    Given I am on the home page
    When I follow "New Workout"
    Then I should be on the Create New Workout page
    When I fill in "workout_name" with "Running"
    And I select "Cardio" from "workout_kind"
    And I select "2013" from "workout_workout_date_1i"
    And I select "April" from "workout_workout_date_2i"
    And I select "1" from "workout_workout_date_3i"
    And I fill in "workout_duration" with "10 minutes"
    And I press "submit"
    Then I follow "Back"
    Then I should be on the day page
    And I should see "Running"

    When I follow "Running"
    When I follow "Delete"
    Then I should be on the day page
    And I should not see "Running"

  Scenario: Edit a workout
    Given a valid user
    When I go to the login page
    And I fill in the following:
      |Email|username@example.com|
      |Password|password|
    And I press "Sign in"
    Then I should see "Signed in successfully."

    Given I am on the home page
    When I follow "New Workout"
    Then I should be on the Create New Workout page
    When I fill in "workout_name" with "Running"
    And I select "Cardio" from "workout_kind"
    And I select "2013" from "workout_workout_date_1i"
    And I select "April" from "workout_workout_date_2i"
    And I select "1" from "workout_workout_date_3i"
    And I fill in "workout_duration" with "10 minutes"
    And I press "submit"
    Then I follow "Back"
    Then I should be on the day page
    And I should see "Running"

    When I follow "Running"
    Then I should be on the show Workout page
    When I fill in "workout_name" with "Curling"
    And I select "Weight Lifting" from "workout_kind"
    And I select "2013" from "workout_workout_date_1i"
    And I select "April" from "workout_workout_date_2i"
    And I select "2" from "workout_workout_date_3i"
    And I fill in "workout_duration" with "15 reps"
    And I press "submit"
    Then I should be on the day page
    And I should see "Curling"
    And I should not see "Running"


  Scenario: Login
    Given a valid user
    When I go to the login page
    And I fill in the following:
      |Email|username@example.com|
      |Password|password|
    And I press "Sign in"
    Then I should see "Signed in successfully."

