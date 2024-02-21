package pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import basePackage.BaseUtils;

public class LoginPage {
	
	WebDriver driver = BaseUtils.getDriver();
	
	public LoginPage() {
		PageFactory.initElements(driver, this);
	}
	
	
	@FindBy(name = "username")
	public WebElement userName;
	
	@FindBy(name = "password")
	public WebElement passWord;
	
	@FindBy(xpath ="//button[.='LOGIN']")
	public WebElement loginBtn;
	
	@FindBy(xpath = "//div[@role='alert']//div[.='Logged in successfully']")
	public WebElement loginSuccessPopup;
	
	public void inputUserName(String UserName) {
		userName.sendKeys(UserName);
	}
	
	public void inputPassword(String passwd) {
		passWord.sendKeys(passwd);
	}
	
	public void clickLoginBtn() {
		loginBtn.click();	
	}
	
	public void verifyLoginSuccessPopup() {
		loginSuccessPopup.isDisplayed();	
		
	}
	
	public void verifyLoginScreenRedirection() {
		
	}
	
	
	
	

}
