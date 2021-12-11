package stepdefs;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)

@CucumberOptions(
	
	monochrome= true,
	// Generating Reports
	plugin= {"pretty","html:target/cucumber-html","json:target/cucumber.json"},

	features= "src/test/java/features",
	//tags= {"@Regression, @DataTable"},	// OR Condition
	//tags= {"@Regression", "@Sanity"},	// And Condition
	tags= {"@Regression"},
	//tags= {"~@DataTable"}, // to ignore a tag
	//tags= {"@LoginFeature"}, // Feature Level tag
	glue= {"stepdefs"}
	
)

public class TestRunner {
	
	
	
}
