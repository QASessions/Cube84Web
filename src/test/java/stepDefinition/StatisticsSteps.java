package stepDefinition;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pages.SideMenus;
import pages.StatisticsPage;
import utility.RandomTestDataGenerator;

public class StatisticsSteps {
	 SideMenus sideMenu = new SideMenus();
	 StatisticsPage sp = new StatisticsPage();
	 static String ActivityName;
	 
	@Given("user select the statistics")
	public void user_select_the_statistics() {   
	    sideMenu.verifyStatistics();
	    sideMenu.selectStatistics();
	}

	@Given("user select the Admin Activity")
	public void user_select_the_admin_activity() {
	    sideMenu.selectAdminActivity();    
	}

	@When("user click on the Add Activity button")
	public void user_click_on_the_add_activity_button() {
		sp.clickAddNewActivity();    
	}

	@Given("user should give the Activity Name {string}")
	public void user_should_give_the_activity_name(String activityName) {
		ActivityName = activityName + "_" + RandomTestDataGenerator.generate_RandomStringName(5, true, true);;
		sp.enterActivity(ActivityName);
	}
	
	@Then("user should select the Template {string}")
	public void user_should_select_the_template(String templateName) throws InterruptedException {
		sp.selectTemplate(templateName); 
		sp.verifySelectedTarget(templateName);
	}

	@Then("user should select the Category {string}")
	public void user_should_select_the_category(String categoryName) throws InterruptedException {
	        sp.selectCategory(categoryName);
	}

	@Then("user should select the Sub Category {string}")
	public void user_should_select_the_sub_category(String SubCategoryName) throws InterruptedException {
	    sp.selectSubCategory(SubCategoryName);
	    sp.verifySelectedSubCategory(SubCategoryName);
	}
	
	@And("user hit the Save button")
	public void user_hit_the_Save_button() {
		sp.clickSaveBtn();
	}
	
	
	@Then("user should receive the Task Creation success popup")
	public void user_should_receive_the_task_creation_success_popup() {
	    sp.verifyAndCloseTaskSuccessPopup();   
	}

	@Then("user select the Daily and weekly view")
	public void user_select_the_daily_and_weekly_view() {
	      sideMenu.selectchildDailyWeeklyView();
	      sp.verifyDailyandWeeklyViewSubModuleSelected();
	}

	@Then("user view the Created Activity under Category in GlobalTask {string}")
	public void user_view_the_created_activity_under_category(String Category) {
	    sp.verifyActivtyMappingIn_Category_GlobalTaskList(Category);
	}

	@Then("user Select the SubTaskList")
	public void user_select_the_sub_task_list() {
	    sp.click_SubTaskList();
	}

	@Then("user should able to view the created Activity in SubCategoryList")
	public void user_should_able_to_view_the_created_activity_in_sub_category_list() throws InterruptedException {
	    sp.verifyAcvitityMappingIn_Subcategory_SubTaskList(ActivityName);
	    
	}

	@Then("user should able to select the quantity for current date and view the task creation page")
	public void user_should_able_to_select_the_quantity_for_current_date_and_view_the_task_creation_page() throws InterruptedException {
	 sp.clickSubcategory_CurrentDate_And_View_Task(ActivityName);     
	}
	
	@Then("user verify the created Activity in the Admin Activity Screen")
	public void user_verify_the_created_Activity_in_Admin_Activity_Screen() {
		sp.verifyCreatedActivity();
	}


	

}
