package Runners;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import io.cucumber.testng.AbstractTestNGCucumberTests;

@RunWith(Cucumber.class)
@CucumberOptions(
		
		features = "src\\test\\resource\\Feature",
		glue = "stepDefinition",
		tags = "@Demo",
		dryRun = false,
		plugin = {
				"pretty",
				"html:target/CucumberReport/cucumberHTML",
				}
		)


public class SanityRunner extends AbstractTestNGCucumberTests{	
	

   

}
