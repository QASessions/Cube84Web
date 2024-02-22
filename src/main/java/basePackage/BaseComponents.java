package basePackage;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

public class BaseComponents {
	
	static Actions action = new Actions(BaseUtils.getDriver());
	
	public static void moveToElement(WebElement wb) {
		action.moveToElement(wb).build().perform();
	}

}
