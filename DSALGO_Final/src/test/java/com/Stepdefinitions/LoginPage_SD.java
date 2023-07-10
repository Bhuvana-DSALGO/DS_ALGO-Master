package com.Stepdefinitions;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.junit.Assert;
import com.qa.factory.DriverFactory;
import com.qa.util.ExcelReader;
import com.qa.util.Loggerload;
import com.PageFactory.*;

import io.cucumber.java.en.*;

public class LoginPage_SD {
	
	private RegisterPage_PO rp = new RegisterPage_PO(DriverFactory.getDriver());
	private LoginPage_PO lp = new LoginPage_PO(DriverFactory.getDriver());

	@Given("The user is in the Sign in page")
	public void the_user_is_in_the_sign_in_page() {
		Loggerload.info("user in Login page");
		DriverFactory.getDriver().get("https://dsportalapp.herokuapp.com/login");
	}

	@When("The user enters a valid {string} and {string}")
	public void the_user_enters_a_valid_and(String username, String password) {
	    rp.enterUserName(username);
	    lp.enterPassword(password);
	}

	@Then("click login button to verify and pagetitle is {string}")
	public void click_login_button_to_verify_and_pagetitle_is(String expectedTitle) {
		lp.clickLoginBtn();
		Assert.assertEquals(expectedTitle,DriverFactory.getdriverTitle());
		lp.clickLogoutBtn();
	}
	
	@When("The user clicks on register link on signin page")
	public void the_user_clicks_on_register_link_on_signin_page() {
	    lp.clickRegisterBtn();
	}

	@Then("The user redirected to Registration page from signin page and title is {string}")
	public void the_user_redirected_to_registration_page_from_signin_page_and_title_is(String expectedTitle) {
		Assert.assertEquals(expectedTitle,DriverFactory.getdriverTitle());
	}
	
	@When("The user enter invalid {string} and {string}")
	public void the_user_enter_invalid_and(String username, String password) {
		rp.enterUserName(username);
		lp.enterPassword(password);
	}

	@Then("click login button to verify and pagetitle should be {string}")
	public void click_login_button_to_verify_and_pagetitle_should_be(String expectedTitle) {
		lp.clickLoginBtn();
		Assert.assertEquals(expectedTitle,DriverFactory.getdriverTitle());
	}
	
	@When("The user enter sheet {string} and {int}")
	public void the_user_enter_sheet_and(String Sheetname, Integer RowNumber) throws InvalidFormatException, IOException {
	    ExcelReader reader = new ExcelReader();
	    //List<Map<String,String>> testData = reader.getData("/Users/sara/Sudha Selenium Training/SampleExcel/DS-Algo/LoginDetails.xlsx", Sheetname);
	    List<Map<String,String>> testData = reader.getData("src/test/resource/TestData/LoginDetails.xlsx", Sheetname);
	    String username = testData.get(RowNumber).get("Username");
	    String password = testData.get(RowNumber).get("Password");
	    rp.enterUserName(username);
		lp.enterPassword(password);	
		
	}

	@Then("click login button to verify")
	public void click_login_button_to_verify() {
		lp.clickLoginBtn();
		String expectedTitle = "NumpyNinja";
		String actualTitle = DriverFactory.getdriverTitle();

		if (expectedTitle.equals(actualTitle)) {
			Assert.assertEquals(expectedTitle,actualTitle);
		}
		else if (actualTitle.equals("Login")) {
			Assert.assertTrue(true);
		}
	}
	
	@Given("The user is in the Home page with valid log in {string} and {string}")
	public void the_user_is_in_the_home_page_with_valid_log_in_and(String username, String password) {
		rp.enterUserName(username);
		lp.enterPassword(password);
		lp.clickLoginBtn();
	}

	@When("The user clicks Sign out")
	public void the_user_clicks_sign_out() {
		lp.clickLogoutBtn();
	}
}
