package pages;

import java.time.Duration;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;

import basePackage.BaseUtils;




public class SideMenus {
	

	WebDriver driver = BaseUtils.getDriver();
	WebDriverWait wait;
	
		

	public SideMenus() {
		PageFactory.initElements(driver, this);
		wait = new WebDriverWait(driver, Duration.ofSeconds(20));
	}
	
	@FindBy(xpath = "//div[contains(@class,'SidebarContainer_sidebar__menu')]//div[.='Statistics']")
	public WebElement statistics;
	
	@FindBy(xpath = "//div[contains(@class,'SidebarContainer_sidebar') and contains(@class,'child__menu')]/div[contains(.,'Stats') and contains(.,'Daily and Weekly View')]")
	public WebElement childDailyWeeklyView;
	
	@FindBy(xpath = "//div[contains(@class,'SidebarContainer_sidebar') and contains(@class,'child__menu')]/div[contains(.,'Admin') and contains(.,'Activity')]")
	public WebElement childAdminActivity;
	
	@FindBy(xpath = "//div[contains(@class,'SidebarContainer_sidebar') and contains(@class,'child__menu')]/div[contains(.,'Admin : Task Assignments')]")
	public WebElement childTaskAssignments;
	
	@FindBy(xpath = "//div[contains(@class,'SidebarContainer_sidebar') and contains(@class,'child__menu')]/div[contains(.,'App Menu and Dashboard Assignment')]")
	public WebElement childAppMenuandDashboard;
	
	@FindBy(xpath = "//div[contains(@class,'SidebarContainer_sidebar') and contains(@class,'child__menu')]/div[contains(.,'App Menu and Dashboard Sorting')]")
	public WebElement childAppMenuDashboardSorting;
	
	public void verifyStatistics() {
		Assert.assertEquals(statistics.isDisplayed(), true);
	}
	
	public void selectStatistics() {
		statistics.click();
	}
	
	public void verifyStatisticsSubMenu() {
		Assert.assertEquals(childDailyWeeklyView.isDisplayed(), true);
		Assert.assertEquals(childAdminActivity.isDisplayed(), true);
		Assert.assertEquals(childTaskAssignments.isDisplayed(), true);	
		Assert.assertEquals(childAppMenuandDashboard.isDisplayed(), true);
		Assert.assertEquals(childAppMenuDashboardSorting.isDisplayed(), true);
		
	}
	
	public void selectchildDailyWeeklyView() {
		childDailyWeeklyView.click();
	}
	
	public void selectAdminActivity() {
		childAdminActivity.click();
	}
	
}
