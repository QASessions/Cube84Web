package pages;

import java.time.Duration;
import java.util.List;
import java.util.NoSuchElementException;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.NoSuchSessionException;
import org.openqa.selenium.StaleElementReferenceException;
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
	static String ActivityName;

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

	@FindBy(xpath = "//label[@for='template_id']/following-sibling::div[.='Template']")
	public WebElement template;
	
	@FindBy(xpath = "//label[@for='template_id']/following-sibling::div//input[@role='combobox']")
	public WebElement inputTemplatebox;

	@FindBy(xpath = "//div[@role='listbox']/div")
	public List<WebElement> TemplateDropDown;

	@FindBy(xpath = "//*[@for='task_id']/following-sibling::div")
	public WebElement category;

	@FindBy(xpath = "//*[@for='task_id']/parent::div//div[@role='listbox']/div")
	public List<WebElement> categoryDropDown;

	@FindBy(xpath = "//label[@for='sub_category_id']/following-sibling::div")
	public WebElement subCategory;
	
	@FindBy(xpath = "//label[@for='sub_category_id']/following-sibling::div//input[@role='combobox']")
	public WebElement subCategoryInput;

	@FindBy(xpath = "//*[@for='sub_category_id']/parent::div//div[@role='listbox']/div")
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
	
	@FindBy(name = "search")
	public WebElement ActivtySearch;
	


	public void clickAddNewActivity() {
		waitVisibility(btnAddNewActivity);
		Assert.assertEquals(btnAddNewActivity.isDisplayed(),true);
		btnAddNewActivity.click();
	}

	public void enterActivity(String activityName) {
		waitVisibility(titleInput);
		Assert.assertEquals(titleInput.isDisplayed(), true);
		ActivityName = activityName;
		titleInput.sendKeys(activityName);
	}

	public void selectTemplate(String TemplateName) throws InterruptedException {
		Assert.assertEquals(waitVisibility(template).isDisplayed(), true);
		try {
		BaseComponents.moveToElement(waitVisibility(template));
		}catch (StaleElementReferenceException e) {
			System.out.println(e);
		}catch(NoSuchSessionException nosuchSession){
			System.out.println(nosuchSession);
		}finally{
			waitVisibility(template).click();
		}
		while(TemplateDropDown.size()<1) {
			Thread.sleep(2000);
		}	
		if(!TemplateDropDown.isEmpty()) {
			for(WebElement each : TemplateDropDown) {
				String templateName = each.getText();
				if(templateName.equalsIgnoreCase(TemplateName)) {	
				//	waitVisibility(inputTemplatebox).click();
					waitVisibility(inputTemplatebox).sendKeys(templateName);
					waitVisibility(each).click();
					break;
				}
			}
		}else {
			Assert.assertFalse(true, "No Table available");
		}

	}
	
	public void verifySelectedTarget(String TemplateName) throws InterruptedException {
		WebElement selectedTemplate = null;
		String selectedTemplt = null;
		try {
			System.out.println("In Try Block");
			selectedTemplate = waitVisibility(driver.findElement(By.xpath("//label[@for='template_id']/following-sibling::div/div/div/div")));
		    selectedTemplt = waitVisibility(selectedTemplate).getText();
			if(selectedTemplt.equals(TemplateName)){
				System.out.println("Inside if Block");
				Assert.assertEquals(selectedTemplt, TemplateName);
				System.out.println("Inside if assert crossed");
			}else{
				System.out.println("Inside else Block");
				selectSubCategory(TemplateName);
				System.out.println("Inside else Block end");
				selectedTemplt = waitVisibility(selectedTemplate).getText();
					if(selectedTemplt.equals(TemplateName)){
						System.out.println("Inside if Block");
						Assert.assertEquals(selectedTemplt, TemplateName);
						System.out.println("Inside if assert crossed");
					}else{
						System.out.println("Inside else Block");
						selectTemplate(TemplateName);
						System.out.println("Inside else Block end");
					}
			}
		}catch (Exception e) {
			System.out.println("Inside catch Block");
			
			System.out.println("executed recursive catch");
		}
	}

	public void selectCategory(String CategoryName) throws InterruptedException {
		Assert.assertEquals(category.isDisplayed(), true);
		category.click();
		while(categoryDropDown.size()<1) {
			Thread.sleep(1000);
		}	
		if(!categoryDropDown.isEmpty()) {
			for(WebElement each : categoryDropDown) {
				String	categoryName = each.getText();
				if(categoryName.equalsIgnoreCase(CategoryName)) {
					waitVisibility(each).click();
					break;
				}
			}			
		}else {
			Assert.assertFalse(true, "No values available in dropdown");
		}		
	}

	public void selectSubCategory(String SubCategoryName) throws InterruptedException {
		Assert.assertEquals(subCategory.isDisplayed(), true);
		subCategory.click();
		waitVisibility(subCategoryInput).sendKeys(SubCategoryName);
		while(subCategoryDropDown.size()==0) {
			Thread.sleep(1000);
		}
		if(!subCategoryDropDown.isEmpty()) {
			WebElement wb=null;
			try{
				wb = waitVisibility(driver.findElement(By.xpath("//div[@role='listbox']/div[.='"+ SubCategoryName + "']"))); 
			}catch (NoSuchElementException e ) {
				wb = waitVisibility(driver.findElement(By.xpath("//div[@role='listbox']/div[.='"+ SubCategoryName + "']"))); 
			}catch(StaleElementReferenceException st) {
				Thread.sleep(500);
				wb = waitVisibility(driver.findElement(By.xpath("//div[@role='listbox']/div[.='"+ SubCategoryName + "']"))); 
			}
			catch(Exception e) {
				System.out.println("exception : " + e);
				Assert.assertFalse(true);
			}
			try{
				JavascriptExecutor executor = (JavascriptExecutor) BaseUtils.getDriver();
				executor.executeScript("arguments[0].click();", wb);
				Thread.sleep(500);
			}catch(Exception e) {
				Assert.assertFalse(true);
			}
		}else {
			Assert.assertFalse(true);
		}			
	}
	
	public void verifySelectedSubCategory(String SubCategoryName) throws InterruptedException {
		WebElement selectedSubCategory = null;
		String selectedSub = null;
		try {
			System.out.println("In Try Block");
			selectedSubCategory = waitVisibility(driver.findElement(By.xpath("//label[@for='sub_category_id']/following-sibling::div/div/div/div")));
		    selectedSub = waitVisibility(selectedSubCategory).getText();
			if(selectedSub.equals(SubCategoryName)){
				System.out.println("Inside if Block");
				Assert.assertEquals(selectedSub, SubCategoryName);
				System.out.println("Inside if assert crossed");
			}else{
				System.out.println("Inside else Block");
				selectSubCategory(SubCategoryName);
				System.out.println("Inside else Block end");
				 selectedSub = waitVisibility(selectedSubCategory).getText();
					if(selectedSub.equals(SubCategoryName)){
						System.out.println("Inside if Block");
						Assert.assertEquals(selectedSub, SubCategoryName);
						System.out.println("Inside if assert crossed");
					}else{
						System.out.println("Inside else Block");
						selectSubCategory(SubCategoryName);
						System.out.println("Inside else Block end");
					}
			}
		}catch (Exception e) {
			System.out.println("Inside catch Block");
			
			System.out.println("executed recursive catch");
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
		
		@FindBy(xpath = "//input[@name='searchValue']/parent::div/../following-sibling::div//tbody/tr")
		public List<WebElement> subTaskListTableValues;

		public void verifyAcvitityMappingIn_Subcategory_SubTaskList(String subCategory) throws InterruptedException {
			while(subTaskListTableValues.size()<2){
				Thread.sleep(1000);
			}
			WebElement subCategoryName_subTaskTable = null;
			try {
				subCategoryName_subTaskTable = driver.findElement(By.xpath("//*[.='"+ subCategory +"']"));
				Assert.assertTrue(subCategoryName_subTaskTable.isDisplayed());
			}catch (NoSuchElementException e) {
				System.out.println(e);
				Assert.assertTrue(false);
			}
			
			
		}
			
		
		
			public void clickSubcategory_CurrentDate_And_View_Task(String subCategory) throws InterruptedException {
				while(subTaskListTableValues.size()<2){
					Thread.sleep(1000);
				}
				WebElement subCategoryCurrentDate_subTaskTable = null;
				try {
					if(driver.getCurrentUrl().contains("migration")) {
						subCategoryCurrentDate_subTaskTable = driver.findElement(By.xpath("//*[.='"+ subCategory +"']/following-sibling::td"));
					}else {
					subCategoryCurrentDate_subTaskTable = driver.findElement(By.xpath("//span[.='"+ subCategory +"']/../following-sibling::td"));
					}
					Assert.assertTrue(subCategoryCurrentDate_subTaskTable.isDisplayed());
				}catch (NoSuchElementException e) {
					System.out.println(e);
					Assert.assertTrue(false);
				}try {
					BaseComponents.moveToElement(subCategoryCurrentDate_subTaskTable);
				}catch (NoSuchSessionException e) {
					System.out.println(e);
				}finally {
					waitVisibility(subCategoryCurrentDate_subTaskTable).click();
				}
			}
			
			
			public void verifyAddNewTaskASSIGNMENT() {
				Assert.assertTrue(waitVisibility(btnAddNewTaskASSIGNMENT).isDisplayed());
			}
			
			public void clickAddNewTaskASSIGNMENT() {
				waitVisibility(btnAddNewTaskASSIGNMENT).click();
			}
			
			public void verifyCreatedActivity() {
				Assert.assertTrue(waitVisibility(ActivtySearch).isDisplayed());
				waitVisibility(ActivtySearch).sendKeys(ActivityName);
				WebElement createdActivity=null;
				try {
					createdActivity = waitVisibility(driver.findElement(By.xpath("//td[.='"+ ActivityName +"']")));
				}catch (NoSuchElementException e) {
					createdActivity = waitVisibility(driver.findElement(By.xpath("//td[.='"+ ActivityName +"']")));
				}catch (NullPointerException nl) {
					createdActivity = waitVisibility(driver.findElement(By.xpath("//td[.='"+ ActivityName +"']")));
				}finally {
					Assert.assertTrue(waitVisibility(createdActivity).isDisplayed());
				}
			}
				
	}
