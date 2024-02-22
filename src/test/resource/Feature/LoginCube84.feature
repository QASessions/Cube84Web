#Author : Prakash
@tag1
Feature: To Automate the Login Functionality



  
  @TestTag
  Scenario Outline: Verify the user can select the program and Redirect to Homepage
  Given application launches the Browser
  And user verify the Login screen
  And User enter the valid "<Username>" and "<Password>"
  And user hit the Login button
  And application should throw success popup
  When user should asked to choose the Program
  And user select the Program "<ProgramName>"
  And user hit the submit button
  Then user should able to view the Homepage
  And user should view the default selected Program at homepage "<ProgramName>"
  
  Examples:
  |Username				|Password|ProgramName 			 |
  |user_ambassador|Abcd@123|Bethlehem Community|
  
   

 