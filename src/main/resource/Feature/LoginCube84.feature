#Author : Prakash
Feature: To Automate the Login Functionality



  Scenario Outline: Verify the Positive Login
  Given application launches the Browser
  And user verify the Login screen
  When User enter the valid "<Username>" and "<Password>"
  And user hit the Login button
  Then application should throw success popup
  And user should asked to choose the Program
  
  Examples:
  |Username				|Password|
  |user_ambassador|Abcd@123|
   

 