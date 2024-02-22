package pages;

import java.time.Duration;
import java.util.List;
import java.util.NoSuchElementException;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;

import basePackage.BaseComponents;
import basePackage.BaseUtils;

public class StatisticsPage {


	WebDriver driver = BaseUtils.getDriver();
	WebDriverWait wait;

	public StatisticsPage() {
		PageFactory.initElements(driver, this);
		wait = new WebDriverWait(driver, Duration.ofSeconds(20));
	}

	public WebElement waitVisibility(WebElement wb) {
		return wait.until(ExpectedConditions.visibilityOf(wb));
	}

	@FindBy(xpath = "//button[.='ADD NEW ACTIVITY']")
	public WebElement btnAddNewActivity;

	@FindBy(xpath = "//input[@placeholder='Title'] ")
	public WebElement titleInput;

	@FindBy(xpath = "//div[.='Template']")
	public WebElement template;

	@FindBy(xpath = "//div[@role='listbox']/div")
	public List<WebElement> TemplateDropDown;

	@FindBy(xpath = "//div[.='Category']/div/div")
	public WebElement category;

	@FindBy(xpath = "//div[.='Category']/parent::div//div[@role='listbox']/div")
	public List<WebElement> categoryDropDown;

	@FindBy(xpath = "//div[.='Sub Category']")
	public WebElement subCategory;

	@FindBy(xpath = "//div[.='Sub Category']/parent::div//div[@role='listbox']/div")
	public List<WebElement> subCategoryDropDown;

	@FindBy(xpath ="//button[.='Save']")
	public WebElement SaveBtn;
	
	@FindBy(xpath = "//div[@role='alert'][.='Task added successfully']")
	public WebElement TaskSuccessPopup;
	
	@FindBy(xpath = "//div[@role='alert'][.='Task added successfully']/following-sibling::button")
	public WebElement close_TaskSuccessPopup;

	@FindBy(xpath = "//p[.='Daily and Weekly View']")
	public WebElement dailyandWeeklyView;

	@FindBy(xpath = "//a[.='Global Task List']")
	public WebElement GlobalTaskList;

	@FindBy(xpath = "//a[.='Sub Task List']")
	public WebElement subTaskList;

	@FindBy(xpath = "//button[.='ADD NEW TASK ASSIGNMENT']")
	public WebElement btnAddNewTaskASSIGNMENT;
	


	public void clickAddNewActivity() {
		waitVisibility(btnAddNewActivity);
		Assert.assertEquals(btnAddNewActivity.isDisplayed(),true);
		btnAddNewActivity.click();
	}

	public void enterActivity(String activityName) {
		waitVisibility(titleInput);
		Assert.assertEquals(titleInput.isDisplayed(), true);
		titleInput.sendKeys(activityName);
	}

	public void selectTemplate(String TemplateName) throws InterruptedException {
		Assert.assertEquals(template.isDisplayed(), true);
		template.click();
		Thread.sleep(2000);
		if(!TemplateDropDown.isEmpty()) {
			for(WebElement each : TemplateDropDown) {
				String templateName = each.getText();
				if(templateName.equalsIgnoreCase(TemplateName)) {
					waitVisibility(each).click();
					break;
				}
			}
		}else {
			Assert.assertFalse(true, "No Table available");
		}

	}

	public void selectCategory(String CategoryName) throws InterruptedException {
		Assert.assertEquals(category.isDisplayed(), true);
		category.click();
		Thread.sleep(2000);
		if(!TemplateDropDown.isEmpty()) {
			for(WebElement each : categoryDropDown) {
				String	categoryName = each.getText();
				if(categoryName.equalsIgnoreCase(CategoryName)) {
					waitVisibility(each).click();
					break;
				}
			}			
		}else {
			Assert.assertFalse(true, "No Table available");
		}		
	}

	public void selectSubCategory(String SubCategoryName) throws InterruptedException {
		Assert.assertEquals(subCategory.isDisplayed(), true);
		subCategory.click();
		Thread.sleep(2000);
		if(!TemplateDropDown.isEmpty()) {
			for(WebElement each : subCategoryDropDown) {
				String	subCategoryName = each.getText();
				if(subCategoryName.equalsIgnoreCase(SubCategoryName)) {
					waitVisibility(each).click();
					break;
				}
			}			
		}else {
			Assert.assertFalse(true, "No Table available");
		}	
	}

	public void clickSaveBtn() {
		Assert.assertTrue(SaveBtn.isDisplayed());
		SaveBtn.click();
	}
	
	public void verifyAndCloseTaskSuccessPopup() {
		Assert.assertTrue(waitVisibility(TaskSuccessPopup).isDisplayed());
		Assert.assertTrue(close_TaskSuccessPopup.isDisplayed());		
		close_TaskSuccessPopup.click();
	}
	

	public void verifyDailyandWeeklyViewSubModuleSelected() {
		Assert.assertTrue(dailyandWeeklyView.isDisplayed());
		Assert.assertTrue(GlobalTaskList.isDisplayed());
		Assert.assertTrue(subTaskList.isDisplayed());
	}

	public void verifyActivtyMappingIn_Category_GlobalTaskList(String category) {
		WebElement subCategoryName_GlobalTaskTable=null;
		try {
			subCategoryName_GlobalTaskTable = driver.findElement(By.xpath("//span[.='"+ category +"']/../preceding-sibling::td"));
			Assert.assertTrue(subCategoryName_GlobalTaskTable.isDisplayed());
		}catch (NoSuchElementException e) {
			System.out.println(e);
			Assert.assertTrue(false);
		}

	}

	public void verifyAcvitityMappingIn_CategoryandSubcategory_GlobalTaskList(String category, String subCategory) {
		WebElement CategoryName_GlobalTaskTable = null;
		WebElement subCategoryName_GlobalTaskTable = null;
		try {
			CategoryName_GlobalTaskTable = driver.findElement(By.xpath("//span[.='"+ category +"']/../preceding-sibling::td"));
			Assert.assertTrue(CategoryName_GlobalTaskTable.isDisplayed());
			subCategoryName_GlobalTaskTable = driver.findElement(By.xpath("//span[.='"+ category +"']/../parent::tr/following-sibling::tr/td[.='" + subCategory + "']"));
			Assert.assertTrue(subCategoryName_GlobalTaskTable.isDisplayed());
		}catch (NoSuchElementException e) {
			System.out.println(e);
			Assert.assertTrue(false);
		}
	}
	
		public void click_SubTaskList() {
			Assert.assertTrue(waitVisibility(subTaskList).isDisplayed());
			subTaskList.click();
		}

		public void verifyAcvitityMappingIn_Subcategory_SubTaskList(String subCategory) {
			WebElement subCategoryName_subTaskTable = null;
			try {
				subCategoryName_subTaskTable = driver.findElement(By.xpath("//span[.='"+ subCategory +"']"));
				Assert.assertTrue(subCategoryName_subTaskTable.isDisplayed());
			}catch (NoSuchElementException e) {
				System.out.println(e);
				Assert.assertTrue(false);
			}
		}
			
			public void clickSubcategory_CurrentDate_And_View_Task(String subCategory) {
				WebElement subCategoryCurrentDate_subTaskTable = null;
				try {
					subCategoryCurrentDate_subTaskTable = driver.findElement(By.xpath("//span[.='"+ subCategory +"']/../following-sibling::td"));
					Assert.assertTrue(subCategoryCurrentDate_subTaskTable.isDisplayed());
				}catch (NoSuchElementException e) {
					System.out.println(e);
					Assert.assertTrue(false);
				}
				BaseComponents.moveToElement(subCategoryCurrentDate_subTaskTable);
				waitVisibility(subCategoryCurrentDate_subTaskTable).click();
			}
			
			
			public void verifyAddNewTaskASSIGNMENT() {
				Assert.assertTrue(waitVisibility(btnAddNewTaskASSIGNMENT).isDisplayed());
			}
			
			public void clickAddNewTaskASSIGNMENT() {
				waitVisibility(btnAddNewTaskASSIGNMENT).click();
			}
				
	}
