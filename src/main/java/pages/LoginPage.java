package pages;

import java.time.Duration;
import java.util.List;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;

import basePackage.BaseUtils;

public class LoginPage {
	
	WebDriver driver = BaseUtils.getDriver();
	WebDriverWait wait;
	public LoginPage() {
		PageFactory.initElements(driver, this);
		wait = new WebDriverWait(driver, Duration.ofSeconds(20));
	}
	
	public WebElement waitVisibility(WebElement wb) {
		return wait.until(ExpectedConditions.visibilityOf(wb));
	}
	
	@FindBy(name = "username")
	public WebElement userName;
	
	@FindBy(name = "password")
	public WebElement passWord;
	
	@FindBy(xpath ="//button[.='LOGIN']")
	public WebElement loginBtn;
	
	@FindBy(xpath = "//div[@role='alert']//div[.='Logged in successfully']")
	public WebElement loginSuccessPopup;
	
	@FindBy(xpath = "//div[@role='alert'][.='Logged in successfully']/following-sibling::button")
	public WebElement closeLoginSuccessPopup;
	
	@FindBy(xpath = "//p[.='Please select program to login']")
	public WebElement labelSelectProgram;
	
	@FindBy(xpath = "//h4[.='Welcome Back']")
	public WebElement labelWelcomeBack;
	
	@FindBy(xpath = "//div[.='Select Program']")
	public WebElement selectProgramBtn;
	
	@FindBy(xpath = "//div[contains(@class,'HeaderSection_city')]/div/div/div/div")
	public WebElement selectedProgramHomePage;
	
	
	public void inputUserName(String UserName) {
		userName.sendKeys(UserName);
	}
	
	public void inputPassword(String passwd) {
		passWord.sendKeys(passwd);
	}
	
	public void clickLoginBtn() {
		loginBtn.click();	
	}
	
	public void verifyAndCloseLoginSuccessPopup() {
		Assert.assertTrue(waitVisibility(loginSuccessPopup).isDisplayed());	
		closeLoginSuccessPopup.click();
	}
	
	public void verifyLoginScreenRedirection() {
		String Title = driver.getTitle();
		System.out.println(Title);
		Assert.assertEquals(Title, "Smart System");
	}
	
	public void verifyProgramScreenRedirection() throws InterruptedException {
		Assert.assertEquals(waitVisibility(labelWelcomeBack).isDisplayed(), true);
		Assert.assertEquals(labelSelectProgram.isDisplayed(), true);
		Assert.assertEquals(selectProgramBtn.isDisplayed(), true);		
	}
	
	public void clickSelectProgram() {
		Assert.assertEquals(waitVisibility(selectProgramBtn).isDisplayed(), true);
		selectProgramBtn.click();		
	}
	
	
	@FindBy(xpath = "//div[@role='listbox']/div")
	public List<WebElement> programDropDown;
	
	@FindBy(xpath = "//button[.='SUBMIT']")
	public WebElement submitBtn;
	
	@FindBy(xpath = "//img[@alt='profile_avatar']")
	public WebElement profileAvatar;
	
	public void chooseProgram(String programName) throws InterruptedException {
		Thread.sleep(1000);
		if(!programDropDown.isEmpty()) {
			for(WebElement each : programDropDown) {
				String actual = each.getText();
				if(actual.equalsIgnoreCase(programName)){
					each.click();
					break;
				}
			}		
		}else {
			Assert.assertFalse(true);
		}
	}
	
	public void clickSubmitBtn() {
		Assert.assertEquals(submitBtn.isDisplayed(), true);
		wait.until(ExpectedConditions.elementToBeClickable(submitBtn)).click();	
	}
	
	public void verifyHomePageRedirection() {
		Assert.assertEquals(waitVisibility(profileAvatar).isDisplayed(), true);
		String actual = driver.getCurrentUrl();
		Assert.assertEquals(actual, System.getProperty("applicationUrl") + "main/programs?tab=1");
	}
	
	public void verifySelectedProgram(String ExpectedProgram) {
		Assert.assertEquals(selectedProgramHomePage.isDisplayed(), true);
		String actualProgram = selectedProgramHomePage.getText();
		Assert.assertEquals(actualProgram, ExpectedProgram);
	}
	

}
