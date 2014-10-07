Feature: Register for Trainer or Assistant
  As Guest
  Be able to complete registration
	
  Scenario: Register as A Trainer
    When I visit Spottr web app
    Then I should see "Are you a trainer/assistant?"
    And I click "Are you a trainer/assistant?" link
    Then I should see "Trainer/Assistant Registration Form"
    And I fill "trainer_first_name" with "Anna"
    And I fill "trainer_last_name" with "Banana"
    And I fill "trainer_email" with "anna.banana@trainer.com"
    And I fill "trainer_password" with "123anna"
    And I fill "trainer_password_confirmation" with "123anna"
    And I choose "0" from "trainer_gender"
    And I fill "trainer_address" with "Mango Road"
    And I choose "true" from "trainer_trainer"
    Then I click the "Sign up" button
    And I should see "You are successfully registered on Spottr!"

  Scenario: Register as An Assistant
    When I visit Spottr web app
    Then I should see "Are you a trainer/assistant?"
    And I click "Are you a trainer/assistant?" link
    Then I should see "Trainer/Assistant Registration Form"
    And I fill "trainer_first_name" with "Anna"
    And I fill "trainer_last_name" with "Banana"
    And I fill "trainer_email" with "anna.banana@trainer.com"
    And I fill "trainer_password" with "123anna"
    And I fill "trainer_password_confirmation" with "123anna"
    And I choose "0" from "trainer_gender"
    And I fill "trainer_address" with "Mango Road"
    And I choose "false" from "trainer_trainer"
    Then I click the "Sign up" button
    And I should see "You are successfully registered on Spottr!"