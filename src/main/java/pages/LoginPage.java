package pages;

import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.time.Duration;
import java.util.List;
import java.util.NoSuchElementException;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;

import com.sun.tools.javac.util.Context.Key;

import basePackage.BaseComponents;
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

	@FindBy(xpath = "//div[.='Select Program']/following-sibling::div/input[@role = 'combobox']")
	public WebElement selectProgramInput;

	@FindBy(xpath = "//div[contains(@class,'HeaderSection_city')]/div/div/div/div")
	public WebElement selectedProgramHomePage;


	public void inputUserName(String UserName) {
		userName.sendKeys(UserName);
	}

	public void inputPassword(String passwd) {
		waitVisibility(passWord).sendKeys(passwd);
	}

	public void clickLoginBtn() {
		Assert.assertTrue(waitVisibility(loginBtn).isDisplayed());
		waitVisibility(loginBtn).click();	
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
		try{
			Assert.assertEquals(waitVisibility(labelWelcomeBack).isDisplayed(), true);
		}catch(StaleElementReferenceException st){
			Assert.assertEquals(waitVisibility(labelWelcomeBack).isDisplayed(), true);
		}
		Assert.assertEquals(labelSelectProgram.isDisplayed(), true);
		Assert.assertEquals(selectProgramBtn.isDisplayed(), true);		
	}

	public void clickSelectProgram() {
		Assert.assertEquals(waitVisibility(selectProgramBtn).isDisplayed(), true);
		Assert.assertTrue(BaseComponents.click(selectProgramBtn));		
	}


	@FindBy(xpath = "//div[@role='listbox']/div")
	public List<WebElement> programDropDown;

	@FindBy(xpath = "//button[.='SUBMIT']")
	public WebElement submitBtn;

	@FindBy(xpath = "//img[contains(@alt,'profile_avatar') or contains(@alt,'profile_avtar')]")
	public WebElement profileAvatar;

	public void chooseProgram(String programName) throws InterruptedException, AWTException {
		Assert.assertTrue(waitVisibility(selectProgramBtn).isDisplayed());
		waitVisibility(selectProgramBtn).click();
		waitVisibility(selectProgramInput).sendKeys(programName);
		int size = programDropDown.size();
		while(size<1) {
			Thread.sleep(1000);
			System.out.println("In While Loop");
		}
		if(!programDropDown.isEmpty()) {
			WebElement wb=null;
			try{
				wb = waitVisibility(driver.findElement(By.xpath("//div[@role='listbox']/div[.='"+ programName + "']"))); 
			}catch (NoSuchElementException e ) {
				wb = waitVisibility(driver.findElement(By.xpath("//div[@role='listbox']/div[.='"+ programName + "']"))); 
			}catch(StaleElementReferenceException st) {
				wb = waitVisibility(driver.findElement(By.xpath("//div[@role='listbox']/div[.='"+ programName + "']"))); 
			}
			catch(Exception e) {
				Assert.assertFalse(true);
			}
			try{
				JavascriptExecutor executor = (JavascriptExecutor) BaseUtils.getDriver();
				executor.executeScript("arguments[0].click();", wb);
			}catch(Exception e) {
				Assert.assertFalse(true);
			}
		}else {
			Assert.assertFalse(true);
		}
		
		
		/*
		 * Assert.assertTrue(waitVisibility(selectProgramBtn).isDisplayed());
		 * waitVisibility(selectProgramBtn).click();
		 * waitVisibility(selectProgramInput).sendKeys(programName); int size =
		 * programDropDown.size(); while(size<1) { Thread.sleep(1000);
		 * System.out.println("In While Loop"); } if(!programDropDown.isEmpty()) {
		 * System.out.println("Inside if condition"); for(WebElement each :
		 * programDropDown) { System.out.println("Inside for loop"); String actual; try
		 * { actual = waitVisibility(each).getText();
		 * while(actual.contains("No options")) { actual =
		 * waitVisibility(each).getText(); }
		 * System.out.println("set actual value in try");
		 * }catch(StaleElementReferenceException e) { actual =
		 * waitVisibility(each).getText();
		 * System.out.println("set actual value in catch1");
		 * }catch(NoSuchElementException e) { actual = waitVisibility(each).getText();
		 * System.out.println("set actual value in catch2"); }
		 * System.out.println("actual = " + actual); System.out.println("expected = " +
		 * programName); if(actual.equalsIgnoreCase(programName)){ //
		 * waitVisibility(selectProgramBtn).click(); //
		 * waitVisibility(selectProgramInput).sendKeys(programName + Keys.ENTER); // //
		 * System.out.println("inside if condition to validate text"); WebElement
		 * wb=null; try{ wb =
		 * waitVisibility(driver.findElement(By.xpath("//div[@role='listbox']/div[.='"+
		 * programName + "']"))); }catch (Exception e) { Assert.assertFalse(true); } //
		 * BaseComponents.moveToElement(waitVisibility(wb));
		 * System.out.println("WebElement stored"); JavascriptExecutor executor =
		 * (JavascriptExecutor)driver; executor.executeScript("arguments[0].click();",
		 * wb); System.out.println("JavaScript clicked"); // waitVisibility(wb).click();
		 * 
		 * //
		 * Assert.assertTrue(BaseComponents.click(waitVisibility(driver.findElement(By.
		 * xpath("//div[@role='listbox'][.='"+ programName + "']"))))); break; } } }else
		 * { Assert.assertFalse(true); }
		 */
	}

	public void clickSubmitBtn() {
		Assert.assertEquals(waitVisibility(submitBtn).isDisplayed(), true);
		wait.until(ExpectedConditions.elementToBeClickable(submitBtn));	
		Assert.assertTrue(BaseComponents.click(submitBtn));
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
