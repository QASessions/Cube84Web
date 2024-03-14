package pages;

import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.NoSuchSessionException;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.FindBys;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.FluentWait;
import org.openqa.selenium.support.ui.Wait;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import org.testng.annotations.Test;

import basePackage.BaseComponents;
import basePackage.BaseUtils;

public class StatisticsPage {


	WebDriver driver = BaseUtils.getDriver();
	WebDriverWait wait;
	static String ActivityName;
	static List<String> getsubTaskList=null;
	static List<String> AppMenuDashboardAssignList = null;
	JavascriptExecutor js;
	Wait<WebDriver> waitF;

	public StatisticsPage() {
		PageFactory.initElements(driver, this);
		wait = new WebDriverWait(driver, Duration.ofSeconds(20));
		js = (JavascriptExecutor) driver;
		waitF= new FluentWait<WebDriver>(driver)
				.withTimeout(Duration.ofSeconds(30))
				.pollingEvery(Duration.ofSeconds(3))
				.ignoring(NoSuchElementException.class);
		
	}
	
	public WebElement returnMethodF(WebElement wb) {
		waitF.until(new Function<WebDriver, WebElement>(){
		
			@Override
			public WebElement apply(WebDriver driver) {
				// TODO Auto-generated method stub
				return wb;
			}
		});
		return wb;
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

	@FindBy(xpath = "//div[.='Stats:Daily and Weekly View']")
	public WebElement dailyandWeeklyView;

	@FindBy(xpath = "//a[.='Global Task List']")
	public WebElement GlobalTaskList;

	@FindBy(xpath = "//a[.='Activity List']")
	public WebElement subTaskList;

	@FindBy(xpath = "//button[.='ADD NEW TASK ASSIGNMENT']")
	public WebElement btnAddNewTaskASSIGNMENT;
	
	@FindBy(name = "search")
	public WebElement ActivtySearch;
	

	@FindBys({
		@FindBy(xpath = "//dhaisehf/d"),
		@FindBy(xpath = "//dhaisehf/d")
	})public WebElement sb;
	
	@FindAll({
	@FindBy(xpath = "//dhaisehf/d"),
	@FindBy(xpath = "//dhaisehf/d")
	})public WebElement sb1;
	
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
			Thread.sleep(1000);
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
//		Assert.assertTrue(dailyandWeeklyView.isDisplayed());
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
					createdActivity = waitVisibility(driver.findElement(By.xpath("//*[.='"+ ActivityName +"']")));
				}catch (NoSuchElementException e) {
					createdActivity = waitVisibility(driver.findElement(By.xpath("//*[.='"+ ActivityName +"']")));
				}catch (NullPointerException nl) {
					createdActivity = waitVisibility(driver.findElement(By.xpath("//*[.='"+ ActivityName +"']")));
				}finally {
					Assert.assertTrue(waitVisibility(createdActivity).isDisplayed());
				}
			}
			
			
		@FindBy(xpath = "//tr/td[1]")
		public List<WebElement> subActivityList;
		
		@FindBy(xpath = "//div[.='App Menu and Dashboard Assignment']")
		public WebElement AppMenuDashBoardAssignment;
			
		@FindBy(xpath = "//div[contains(@class,'ProgramsHeader')]")
		public WebElement TitleAppMenuDashBoardAssignment;
		
		@FindBy(xpath = "//tr/td[1]")
		public List<WebElement> AppMenuDashBList;
		
		@FindBy(xpath ="//*[.='Hospitality']")
		public WebElement HospitalityAppMenuDashBoardAssignment;
		
		@FindBy(xpath ="//*[.='Safety']")
		public WebElement SafetyAppMenuDashBoardAssignment;
		
		@FindBy(xpath ="//*[.='Outreach']")
		public WebElement OutreachAppMenuDashBoardAssignment;
		
		
		public void getListOfSubTasks() throws InterruptedException {
			Thread.sleep(5000);
			while(subActivityList.size()<1) {
				Thread.sleep(1000);
			}
			getsubTaskList = new ArrayList<String>();
			if(!subActivityList.isEmpty()) {
				for(WebElement each : subActivityList) {			
					String eachString = each.getText();
					System.out.println(eachString);
					getsubTaskList.add(each.getText());			
				}
			}else {
				System.out.println();
			}
			System.out.println("size of sub taks = " + getsubTaskList.size());
		}
		
		public void clickAppMenuAndDashboardAssignment() {
			waitVisibility(AppMenuDashBoardAssignment).click();
			Assert.assertTrue(waitVisibility(TitleAppMenuDashBoardAssignment).isDisplayed());
			String actual = TitleAppMenuDashBoardAssignment.getText();
			Assert.assertEquals(actual, "APP MENU AND DASHBOARD ASSIGNMENT");
		}
		
		public void clickHospitalityHeaderAppMenuDashBoard() {
			js.executeScript("arguments[0].scrollIntoView;", HospitalityAppMenuDashBoardAssignment);
			waitVisibility(HospitalityAppMenuDashBoardAssignment).isDisplayed();
			waitVisibility(HospitalityAppMenuDashBoardAssignment).click();
		}
		
		public void clickSafetyHeaderAppMenuDashBoard() {
			js.executeScript("arguments[0].scrollIntoView;", SafetyAppMenuDashBoardAssignment);
			waitVisibility(SafetyAppMenuDashBoardAssignment).isDisplayed();
			waitVisibility(SafetyAppMenuDashBoardAssignment).click();
		}
		
		public void clickOutReachHeaderAppMenuDashBoard() {
			js.executeScript("arguments[0].scrollIntoView;", OutreachAppMenuDashBoardAssignment);
			waitVisibility(OutreachAppMenuDashBoardAssignment).isDisplayed();
			waitVisibility(OutreachAppMenuDashBoardAssignment).click();
		}
		
		public void getListofAppMenuDashBoardAssignment() throws InterruptedException {
			while(AppMenuDashBList.size()<1) {
				Thread.sleep(1000);
				System.out.println("In firt thread");
			}
			try {
			 // js.executeScript("arguments[0].scrollIntoView(true);", SaveAssignments);
				driver.findElement(By.xpath("//div[contains(@class,'AdminLayout_admin_body')]")).sendKeys(Keys.END);
			  js.executeAsyncScript("window.scrollTo(0, document.body.scrollHeight)", "");
			  //  js.executeScript("arguments[0].click();",waitVisibility(pageNationButton));
			  waitVisibility(pageNationButton).click();
			  System.out.println("Drop Down clicked");
				if(paginationDropDown.size()>=0) {
					System.out.println("In if condition");
					for(WebElement paginationDropDown : paginationDropDown ) {
						System.out.println("In for condition");
						paginationDropDown.click();
						AppMenuDashboardAssignList = new ArrayList<String>();
						while(AppMenuDashBList.size()<1) {
							Thread.sleep(1000);
							System.out.println("In second while");
						}
						if(!AppMenuDashBList.isEmpty()) {
							for(WebElement each : AppMenuDashBList) {				
								AppMenuDashboardAssignList.add(each.getText());
							}
					}
				
			}
				}else {
				System.out.println("No Table");
			}
				}catch (NoSuchElementException e) {
					if(!AppMenuDashBList.isEmpty()) {
						for(WebElement each : AppMenuDashBList) {				
							AppMenuDashboardAssignList.add(each.getText());
						}
				}
				}
		}
		
		public void getAllListofAppMenuAndDashBoard() throws InterruptedException {
			getListofAppMenuDashBoardAssignment();
			clickHospitalityHeaderAppMenuDashBoard();
			getListofAppMenuDashBoardAssignment();
			clickSafetyHeaderAppMenuDashBoard();
			getListofAppMenuDashBoardAssignment();
			clickOutReachHeaderAppMenuDashBoard();
			getListofAppMenuDashBoardAssignment();
			System.out.println("size of all list = " + AppMenuDashboardAssignList.size());
		}
		
		public void compareSubTask_AppMenuAndDashboard_Lists() {
			if(getsubTaskList.size()==AppMenuDashboardAssignList.size()) {
					Assert.assertTrue(getsubTaskList.containsAll(AppMenuDashboardAssignList));
			}else {
				Assert.assertTrue(false);
			}		
		}
		
		@FindBy(xpath = "//div[contains(@class,'pagination')]/div[4]/div")
		public WebElement pageNationButton;
		
		@FindBy(xpath = "//ul[@role='listbox']/li")
		public List<WebElement> paginationDropDown;
				
		@FindAll({
			@FindBy(xpath = "//button[.='SAVE ASSIGNMENTS']"),
			@FindBy(xpath = "(//button[.='SAVE ASSIGNMENTS'])[2]"),
			@FindBy(xpath = "(//button[.='SAVE ASSIGNMENTS'])[3]"),
			@FindBy(xpath = "(//button[.='SAVE ASSIGNMENTS'])[4]"),
		}) public WebElement SaveAssignments;
		
		public void pagination_check() throws InterruptedException {
		      //wait until 'loader'  loading
		    List<WebElement> pagination = driver.findElements(By.xpath("//page-navigation/div/div/span/a")); 
		    Thread.sleep(5000);
		    if (pagination.size() > 0) { 
		        System.out.println("pagination exists and size=>"+pagination.size()); 
		        int page_no=pagination.size();
		        for (int i = 2; i <= pagination.size(); i++) {      
		            JavascriptExecutor js = (JavascriptExecutor) driver; 
		            js.executeScript("arguments[0].scrollIntoView(true);", driver.findElement(By.xpath("//page-navigation/div/div/span")));    //for scroller move
		            js.executeScript("arguments[0].click();", driver.findElement(By.xpath("//page-navigation/div/div/span/a["+i+"]")));	                //wait 
		        } 
		    } else { 
		        System.out.println("no pagination");
		    }
		    pageNationButton.getLocation();
		}
		
		
		
	}
