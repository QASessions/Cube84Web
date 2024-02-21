package stepDefinition;


import java.io.FileNotFoundException;
import java.io.IOException;

import org.openqa.selenium.WebDriver;

import basePackage.BaseUtils;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pages.LoginPage;
import utility.Config;

public class LoginSteps {
	WebDriver driver;

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
	    
	   
	}

	@When("User enter the valid {string} and {string}")
	public void user_enter_the_valid_and(String userName, String passwrd) {
		LoginPage lp = new LoginPage();
		lp.inputUserName(userName);
		lp.inputPassword(passwrd);
	}

	@When("user hit the Login button")
	public void user_hit_the_login_button() {
		LoginPage lp = new LoginPage();
		lp.clickLoginBtn();   
	}

	@Then("application should throw success popup")
	public void application_should_throw_success_popup() {
	    LoginPage lp = new LoginPage();
	    lp.verifyLoginSuccessPopup();
	   
	}

	@Then("user should asked to choose the Program")
	public void user_should_asked_to_choose_the_program() {
	    
	   
	}
	
	
}
