package basePackage;

import java.time.Duration;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class BaseComponents {
	
	static Actions action =null;
	static WebDriverWait wait = new WebDriverWait(BaseUtils.getDriver(), Duration.ofSeconds(30));
	
	public static void moveToElement(WebElement wb) {
		//wait.until(ExpectedConditions.stalenessOf(wb));
		action =new Actions(BaseUtils.getDriver());
		action.moveToElement(wait.until(ExpectedConditions.visibilityOf(wb))).build().perform();
	}
	
	public static boolean click(WebElement wb) {
		boolean actual = false;
		{
			if(wb.isDisplayed()) {
				wb.click();
				actual = true;
			}
		}
		return actual;
	}

}
