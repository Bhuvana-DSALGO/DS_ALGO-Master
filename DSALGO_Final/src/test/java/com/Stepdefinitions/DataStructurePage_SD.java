package com.Stepdefinitions;

import com.PageFactory.*;
import com.qa.factory.DriverFactory;
import com.qa.util.Loggerload;
import io.cucumber.java.en.*;


public class DataStructurePage_SD extends TR_PF {

	private RegisterPage_PO rp = new RegisterPage_PO(DriverFactory.getDriver());
	private LoginPage_PO lp = new LoginPage_PO(DriverFactory.getDriver());
	//private HomePage_PO hp = new HomePage_PO(DriverFactory.getDriver());
	//private LinkedList_PO listpage = new LinkedList_PO(DriverFactory.getDriver());
	DataStructurePage_PO ds = new DataStructurePage_PO(DriverFactory.getDriver());
	TR_PF trpf = new TR_PF();
	
	@Given("The user is in the Home page after logged in")
	public void the_user_is_in_the_home_page_after_logged_in() {
		Loggerload.info("user in Datastructure Module");
		DriverFactory.getDriver().get("https://dsportalapp.herokuapp.com/login");
		rp.enterUserName("sdetNinja");
		lp.enterPassword("sdet_109");
		lp.clickLoginBtn();
	}
	
	@And("User is clicks on Datastructuregetstarted button")
	public void user_is_clicks_on_datastructuregetstarted_button() {
	    ds.getStarted_ds();
	}

	@When("user clicks on time complexity sub module")
	public void user_clicks_on_time_complexity_sub_module() {
	    ds.timecomplex();
	}

	@Then("user clicks on tryhere button")
	public void user_clicks_on_tryhere_button() {
		trpf.th();
	}

	@Given("user sends valid pythoncode and click on run button and print the output in console")
	public void user_sends_valid_pythoncode_and_click_on_run_button_and_print_the_output_in_console() {
	    ds.dsinput1();
	    trpf.run();
	    ds.dsoutput1();
	}

	@When("user navigates refresh")
	public void user_navigates_refresh() {
	    DriverFactory.refresh();
	}

	@Then("user sends invalid syntax and click on run button and capture the alert messsage")
	public void user_sends_invalid_syntax_and_click_on_run_button_and_capture_the_alert_messsage() {
	    ds.dsinvalidinput();
	    trpf.run();
	    DriverFactory.getAlertMsg();
	}

	@Then("user navigates back")
	public void user_navigates_back() {
		 DriverFactory.navigateback();
	}

	@Given("user clicks on practice Questions")
	public void user_clicks_on_practice_questions() {
	    ds.dspracticeQ();
	}

	@Then("uset navigates back")
	public void uset_navigates_back() throws InterruptedException {
	    DriverFactory.navigateback();
	    Thread.sleep(500);	
	}

}
