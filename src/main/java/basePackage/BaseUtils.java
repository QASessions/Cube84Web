package basePackage;

import java.time.Duration;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class BaseUtils {
	

	private static WebDriver driver;
	public static String testResourcePath= "./src/test/resource/";
	
	public static WebDriver getDriver() {
		return driver;
	}

	public static void setDriver(WebDriver driver) {
		BaseUtils.driver = driver;
	}

	public static void LaunchBrowser() {
		driver = new ChromeDriver();
		driver.get("https://preprodfe.blockbyblock.com/");
		driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(30));
		setDriver(driver);
	}
	
}
