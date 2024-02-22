#Author : Prakash
@tag1
Feature: To Automate the Statistics Functionality
  
  @CreateTask
  Scenario Outline: Verify the user can create the Activity
  Given application launches the Browser
  And user verify the Login screen
  And User enter the valid "<Username>" and "<Password>"
  And user hit the Login button
  And application should throw success popup
  And user should asked to choose the Program
  And user select the Program "<ProgramName>"
  And user hit the submit button
  Then user should able to view the Homepage
  And user should view the default selected Program at homepage "<ProgramName>"
  And user select the statistics
  And user select the Admin Activity
  When user click on the Add Activity button
  And user should give the Activity Name "<ActivityName>"
  And user should select the Template "<TemplateName>"
  And user should select the Category "<CategoryName>"
  And user should select the Sub Category "<SubCategoryName>"
  And user hit the Save button 
  Then user should receive the Task Creation success popup
  And user select the Daily and weekly view
  And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  And user Select the SubTaskList 
  Then user should able to view the created Activity in SubCategoryList
  Then user should able to select the quantity for current date and view the task creation page
  
  Examples:
  |Username	|Password |ProgramName        | ActivityName | TemplateName|CategoryName |SubCategoryName |
  |Admin_BBB|Admin@123|Bethlehem Community| QATest			 | Biohazard	 |Cleaning 		 |Graffiti Removal |	
  
   

 