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

	public static void LaunchBrowser(String browser) {
	if(browser.equalsIgnoreCase("Chrome")) {
		driver = new ChromeDriver();
		String url = System.getProperty("applicationUrl");
		driver.get(url);
		driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(30));
		driver.manage().window().maximize();
		setDriver(driver);
	}
	}
	
}
