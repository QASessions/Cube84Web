package stepDefinition;


import java.io.FileNotFoundException;
import java.io.IOException;

import org.openqa.selenium.WebDriver;

import basePackage.BaseUtils;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pages.LoginPage;
import utility.Config;

public class LoginSteps {
	WebDriver driver;
	LoginPage lp;
	
	@Given("application launches the Browser")
	public void application_launches_the_browser() throws FileNotFoundException, IOException {
		Config config = new Config();
		config.setUpConfig();		
		String browser = System.getProperty("browser");
	//	System.out.println(browser);
		BaseUtils.LaunchBrowser(browser);
		driver = BaseUtils.getDriver();
	}

	@Given("user verify the Login screen")
	public void user_verify_the_login_screen() {
	   lp = new LoginPage();
	   lp.verifyLoginScreenRedirection();
	}

	@When("User enter the valid {string} and {string}")
	public void user_enter_the_valid_and(String userName, String passwrd) {
		lp.inputUserName(userName);
		lp.inputPassword(passwrd);
	}

	@When("user hit the Login button")
	public void user_hit_the_login_button() {
		lp.clickLoginBtn();   
	}

	@Then("application should throw success popup")
	public void application_should_throw_success_popup() {
	    lp.verifyAndCloseLoginSuccessPopup();
	   
	}

	@Then("user should asked to choose the Program")
	public void user_should_asked_to_choose_the_program() throws InterruptedException {
	    lp.verifyProgramScreenRedirection();	   
	}
	
	@And("user select the Program {string}")
	public void user_select_the_Program(String program) throws InterruptedException {
		lp.clickSelectProgram();
		lp.chooseProgram(program);
	}
	
	@And("user hit the submit button")
	public void user_hit_the_submit_button() {
		lp.clickSubmitBtn();
	}
	
	@And("user should able to view the Homepage")
	public void user_should_able_to_view_the_Homepage() {
	lp.verifyHomePageRedirection();
	}	
	
	@And("user should view the default selected Program at homepage {string}")
	public void user_should_view_the_default_selected_Program_at_homepage(String ProgramName) {
		lp.verifySelectedProgram(ProgramName);
	}
  
	
	
}
