#Author : Prakash
@tag1
Feature: To Automate the Statistics Functionality
  
  @CreateTask @Biohazard @TC001  @Test123  @Demo
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	|Password  	  |ProgramName       										| ActivityName | TemplateName|CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Biohazard	 |Cleaning 		 |Graffiti Removal |	
  
  
  @CreateTask @TC002 @QuantityOnly @Demo
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	|Password  	  |ProgramName       										| ActivityName | TemplateName		 |CategoryName |SubCategoryName     |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Quantity Only	 |Hospitality	 |Public Interactions |
  
  
  @CreateTask  @Quantity,Zone @TC003
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Quantity, Zone |Outreach 		 |Referrals for Service |		
  
   

 @CreateTask  @Quantity,Zone,notes @TC004
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Quantity, Zone, notes |Cleaning		 |Machine Hours |		
 
  @CreateTask  @Quantity,Zone,Business @TC005
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  			  		|CategoryName    |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Quantity, Zone, Business |Hospitality		 |Incident Reports |		
 
  @CreateTask  @Quantity,Zone,Business,ContactPerson,Note @TC006
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Quantity, Zone, Business, Contact Person, Note |Cleaning		 |Public Engagements |		
  
  @CreateTask  @Quantity,LocationStart,LocationEnd  @TC007
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName 											|SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Quantity, Location Start, Location End |Cleaning		 |Maintenance Reports |		
  
  
  @CreateTask  @Quantity,Zone,Zip  @TC008
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Quantity, Zone, Zip |Hospitality		 |Incident Reports |		
  
  @CreateTask  @Quantity,Zone,Business,Zip  @TC009
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Quantity, Zone, Business, Zip |Outreach		 |AM Unsheltered Count |		
  

  @CreateTask  @Quantity,Zone,Zip,Country  @TC010
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Quantity, Zone, Zip, Country |Outreach		 |PM Unsheltered Count |		
  

  @CreateTask  @Quantity,StartDT,EndDT  @TC011
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Quantity, Start DT, End DT |Outreach		 |Other |	
  
  
  
   @CreateTask  @Quantity,Zone,Notes  @TC012
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Quantity, Zone, Notes |Cleaning		 |Other |		
  

  @CreateTask  @Quantity,Zone,Business,Note  @TC013
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Quantity, Zone, Business, Note |Cleaning		 |Maintenance Reports |		
  

  @CreateTask  @DistrictSurvey  @TC014
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | District Survey |Safety		 |Public Interactions |
		
  
  
  @CreateTask  @ConditionReport  @TC015
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Condition Report |Safety		 |Business Contacts|
		
  
  @CreateTask  @Quantity,Zone,CourtesyTap  @TC016
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
 # Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Quantity, Zone, Courtesy Tap |Safety		 |Incident Reports|
		
  @CreateTask  @Quantity,Zone,Business,Notes,PersonType  @TC017
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Quantity, Zone, Business, Notes, Person Type |Outreach		 |Transitioned to Improved Circumstances|
		
  @CreateTask  @Calls  @TC018
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
  #And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Calls |Outreach		 |AM Unsheltered Count|
		
   


  @CreateTask @TC019
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | MBTA Equipment Checklist |Outreach		 |AM Unsheltered Count|
		
  @CreateTask @TC020
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Qty, Zone, 1-5 Scale, Notes |Outreach		 |PM Unsheltered Count|
		
  @CreateTask @TC021
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Qty, Zone, Encounter Type, Notes |Outreach		 |Other|
		
  @CreateTask @TC022
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Westwood District Survey |Safety		 |Other|


  @CreateTask @TC023  
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Station Check |Safety		 |Business Contacts|

  @CreateTask @TC024  @lengthCheck
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
  And user verify the created Activity in the Admin Activity Screen
 #And user select the Daily and weekly view
 #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
 #And user Select the SubTaskList 
 #Then user should able to view the created Activity in SubCategoryList
 #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName        |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Planter Maintenance |Safety		 |Welfare Checks / Engagement by Hospitality/Safety|
  


  @CreateTask @TC025
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Prizes Distributed |Safety		 |Welfare Checks / Engagement by Hospitality/Safety|

  
  @CreateTask @TC026  
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Quantity, Zone, Business, Note (with Note required) |Safety		 |Incident Reports|

  @CreateTask @TC027 
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Qty, Zone, Business Category, Business Types, Businesses, Notes |Safety		 |Other|

  @CreateTask @TC028
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Qty, Zone, Trash Bag Category |Safety		 |Other|
  
    @CreateTask @Qty,Zone,Color @TC029
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Qty, Zone, Color |Safety		 |Incident Reports |		
  

  @CreateTask @Qty,Zone,TrashTruck @TC030
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Qty, Zone, Trash Truck |Safety		 |Incident Reports |		
  

  @CreateTask @CallForService @TC031
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Call For Service |Safety		 |Business Contacts |		
  

  @CreateTask  @BiohazardCleanUp @TC032
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       			 							| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Biohazard Clean Up |Safety		 |Public Interactions |		
  

  @CreateTask @Vehicle/OccupanCount @TC033
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Vehicle/Occupant Count |Cleaning		 |Other|		
   
  @CreateTask @Qty,Zone,Fixtures  @TC034
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Qty, Zone, Fixtures |Cleaning		 |Other|		
   
  @CreateTask @Qty,Zone,Notes,Fixtures @TC035
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Qty, Zone, Notes, Fixtures |Cleaning		 |Public Engagements |		
  

  @CreateTask @Qty,Zone,Notes,Business,Fixtures  @TC036
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Qty, Zone, Notes, Business, Fixtures |Cleaning		 |Public Engagements |		
   
  @CreateTask @ElevatorCheck @TC037
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Elevator Check |Outreach		 |Referrals for Service |		
  
  #@CreateTask @Quantity,Zone,Notes,PersonType,LicensePlate @TC038
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Quantity, Zone, Notes, Person Type, License Plate |Outreach		 |Referrals for Service |		
   
  @CreateTask @Qty,Zone,TypeofCall,Disposition,Notes @TC039
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Qty, Zone, Type of Call, Disposition, Notes |Outreach		 |Transitioned to Improved Circumstances |		
   
  @CreateTask @Qty,Zone,TypeofCall,Disposition,TypeofAlarm,Notes  @TC040
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Qty, Zone, Type of Call, Disposition, Type of Alarm, Notes |Outreach		 |AM Unsheltered Count |		
   

  @CreateTask @Qty,Zone,TypeofCall,Disposition,TimeReceived,Time-Arrived,Notes  @TC041
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Qty, Zone, Type of Call, Disposition, Time Received, Time Arrived, Notes |Outreach		 |Welfare Checks / Engagement by Outreach |		
   

  #@CreateTask @Business..followup,Notes  @TC042
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Business Contact: Qty, Zone, Business (freeform), Contact Person, Flag for Followup, Notes |Outreach		 |Welfare Checks / Engagement by Outreach |		
   
  #@CreateTask @DispatchCallReceived:Qty,Zone,Business(freeform),Location,CallBackNumber,Name,Notes @TC043
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Dispatch Call Received: Qty, Zone, Business (freeform), Location, Call Back Number, Name, Notes |Outreach		 |First Aid/Narcan Administered/Requested |		
   

  @CreateTask @HotSpotDetail @TC044
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Hot Spot Detail: Qty, Zone, Start Date & Time, Stop Date & Time, Business, Reason for Detail, Detail Results |Outreach		 |PM Unsheltered Count |		
   

  @CreateTask @Qty,Zone,Notes,Location  @TC045
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Qty, Zone, Notes, Location |Hospitality		 |Incident Reports |		
   

  @CreateTask @BigBelliesServiced  @TC046
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Big Bellies Serviced |Hospitality		 |Business Contacts |		
   

  @CreateTask @ElevatorCheckREVISED @TC047
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Elevator Check REVISED |Hospitality		 |Other |		
   

  @CreateTask @CarouselTicketSales @TC048
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Carousel Ticket Sales |Safety		 |Public Interactions |		
   

  @CreateTask @CarouselRegularCleaning @TC049
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Carousel Regular Cleaning |Safety		 |Welfare Checks / Engagement by Hospitality/Safety |		
   


  @CreateTask @CarouselRides  @TC050
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Carousel Rides |Safety		 |Welfare Checks / Engagement by Hospitality/Safety |		
   

  @CreateTask @HotSpotLocationofDetail @TC051
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Hot Spot Detail: Qty, Zone, Start Date & Time, Stop Date & Time, Location of Detail |Safety		 |Public Interactions |		
   

  @CreateTask @UniversityDistrictIncidentForm @TC052
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | University District Incident Form |Safety		 |Public Interactions |		
   


  @CreateTask @PartyObservations @TC053
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Party Observations |Safety		 |Public Interactions |		
   

  @CreateTask @Qty,Zone,VisitingFrom,Notes  @TC054
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Qty, Zone, Visiting From, Notes |Cleaning		 |Public Engagements |		
   

  @CreateTask @BusinessCall  @TC055
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Business Call |Cleaning		 |Other |		
   

  @CreateTask @Organics @TC056
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Organics |Cleaning		 |Restroom Requests |		
   

  @CreateTask @Drugs/ParaphernaliaFound @TC057
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Drugs/Paraphernalia Found |Hospitality	 |Welfare Checks / Engagement by Hospitality/Safety |		
   
  @CreateTask @CentroRestrooms @TC058
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Centro Restrooms |Hospitality	 |Incident Reports|		
   

  @CreateTask  @HollywoodScooters @TC059
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Hollywood Scooters |Hospitality	 |Incident Reports |		
   

  @CreateTask @GarageCheck @TC060
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Garage Check |Hospitality	 |Business Contacts|		
   

  @CreateTask @Qty,Zone,ReferralType,Notes @TC061
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Qty, Zone, Referral Type, Notes |Hospitality	 |Incident Reports|		
  

  @CreateTask @Qty,Zone,Notes,Location,Name,PhoneNumber,Email,Date @TC062
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Qty, Zone, Notes, Location, Name, Phone Number, Email, Date |Hospitality	 |Incident Reports |		
    

  @CreateTask @Qty,Zone,BusinessCategory,BusinessTypes,Businesses,NameofCaller,TypeofCaller,Notes @TC063
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Qty, Zone, Business Category, Business Types, Businesses, Name of Caller, Type of Caller, Notes |Hospitality	 |Incident Reports|		
    

  @CreateTask @Quantity,Zone,TypeofResponse,Notes @TC064
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Quantity, Zone, Type of Response, Notes |Hospitality	 |Incident Reports |		
    

  #@CreateTask @Quantity,Alert,Zone,Elevator,Status,Odor,Response  @TC065
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Quantity, Alert |Hospitality	 |Incident Reports|		
    

  @CreateTask @Quantity,Zone,Subcategory @TC066
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 | Quantity, Zone, Subcategory |Hospitality	 |Incident Reports |		
    

 # @CreateTask  @Quantity,Zone,TimeCalled,DidTheyArrive?,TimeArrived,Unit/OfficerName,Notes @TC067
  Scenario Outline: Verify the user can create the Activity
  Given application launches the Browser
  And user verify the Login screen
  And User enter the valid "<Username>" and "<Password>"
  And user hit the Login button
  And application should throw success popup
  And user verify the created Activity in the Admin Activity Screen
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Quantity, Zone, Time Called, Did They Arrive?, Time Arrived, Unit '#'/Officer Name, Notes |Hospitality	 |Incident Reports |		
    


 # @CreateTask   @TC068 #@Quantity,Zone,Elevator #,Date/Time Arrived,Date/Time Left,Chemicals Used
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Quantity, Zone, Elevator '#', Date/Time Arrived, Date/Time Left, Chemicals Used |Cleaning	 |Maintenance Reports |		
    
  @CreateTask  @Qty,Zone,TypeofProject,Notes @TC069
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Qty, Zone, Type of Project, Notes|Cleaning	 |Maintenance Reports |		
    

  @CreateTask   @TC070 #Quantity,Zone,Business,Note,Cross Street,Information Requested,Gender,Age,Did you give out any of the following
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Quantity, Zone, Business, Note, Cross Street, Information Requested, Gender, Age, Did you give out any of the following?|Cleaning	 |Maintenance Reports |		
   

  @CreateTask  @TC071  #@Quantity,Zone, ote,Fire Department Contacted?,Trash Can Damaged Beyond Use? 
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Quantity, Zone, Note, Fire Department Contacted?, Trash Can Damaged Beyond Use?|Cleaning	 |Maintenance Reports |		
   


  @CreateTask  @Quantity,Zone,Location,Address,TypeofWork @TC072
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Quantity, Zone, Location, Address, Type of Work|Cleaning	 |Maintenance Reports |		
  

  @CreateTask  @Quantity,Zone,TypeofItem @TC073
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Quantity, Zone, Type of Item|Cleaning	 |Machine Hours |		
    

  @CreateTask  @Quantity,Zone,DescribeLocation,Notes @TC074
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Quantity, Zone, Describe Location, Notes|Cleaning	 |Machine Hours |		
        
  @CreateTask   @TC075  #@Quantity,Zone,Location,Name of Project,Notes
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Quantity, Zone, Location, Name of Project, Notes |Cleaning	 |Machine Hours |		
    

  @CreateTask  @Quantity,Zone,Location,ReferredTo,Notes @TC076
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Quantity, Zone, Location, Referred To, Notes|Cleaning	 |Graffiti Removal |		
                                                            
  

  @CreateTask  @Quantity,Zone,Business,Request-NameofBusiness,Notes @TC077
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Quantity, Zone, Business, Request-Name of Business, Notes|Cleaning	 |Graffiti Removal |		
           


  @CreateTask  @Quantity,Zone,Location @TC078
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Quantity, Zone, Location|Cleaning	 |Graffiti Removal |		
              
  

  @CreateTask  @Qty,Zone,Business,Location,Notes @TC079
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Qty, Zone, Business, Location, Notes|Cleaning	 |Graffiti Removal |		
    

  @CreateTask  @MealBreakInterruption @TC080
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Meal Break Interruption|Cleaning	 |Graffiti Removal |		
   

  @CreateTask  @AccessibilityFeaturesCheck @TC081
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Accessibility Features Check|Cleaning	 |Biohazards |		
   

  @CreateTask  @TC082  #@Quantity,Zone,Name of Event,Date & Time Start of Event, ate & Time End of Event,Notes
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Quantity, Zone, Name of Event, Date & Time Start of Event, Date & Time End of Event, Notes|Cleaning	 |Biohazards |		
    


  @CreateTask  @Qty,Zone,ContactName,Description,ResourcesNeeded @TC083
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Qty, Zone, Contact Name, Description, Resources Needed|Cleaning	 |Biohazards |		
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
  @CreateTask  @TC084 # @Qty,Zone,Contact Name(s),Location (From),Location (To)
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Qty, Zone, Contact Name(s), Location (From), Location (To)|Cleaning	 |Biohazards |		
  

  @CreateTask  @SurveyDrinkingFountains @TC085
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Survey Drinking Fountains|Cleaning	 |Biohazards |		
   

  
  @CreateTask  @Qty,Zone,LoadSize,Notes @TC086
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Qty, Zone, Load Size, Notes|Cleaning	 |Biohazards |		
   

  @CreateTask  @SpecialProjects @TC087
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Special Projects|Cleaning	 |Graffiti Removal|		                         



  @CreateTask  @CharlotteShoutSurvey @TC088
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Charlotte Shout Survey|Cleaning	 |Pounds of Litter (factor)|


  @CreateTask  @MotoristAssist @TC089
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Motorist Assist|Cleaning	 |Public Engagements|

  @CreateTask  @Encampments @TC090
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
  And user verify the created Activity in the Admin Activity Screen
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Encampments|Safety	 |Incident Reports |
  
  
 @CreateTask   @TC091 @Comparison
  Scenario Outline: Verify the SubTask Activity and Menu and DashboardsAssignmeng list
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
  And user select the Daily and weekly view
  And user Select the SubTaskList 
  And user getting the List of Sub Task
  When user click on the Add Menu and Dashboard	Assignment button
  And user taking count for all the task list from each category
  And user compare both the tables
  #And user select the Daily and weekly view
  #And user view the Created Activity under Category in GlobalTask "<CategoryName>"
  #And user Select the SubTaskList 
  #Then user should able to view the created Activity in SubCategoryList
  #Then user should able to select the quantity for current date and view the task creation page
  Then user close the browser
  
  Examples:
  |Username	 |Password    |ProgramName       										| ActivityName | TemplateName  |CategoryName |SubCategoryName |
  |stageadmin|welcome123 	|Bethlehem Community Benefit District | QATest			 |Encampments|Safety	 |Incident Reports |
  