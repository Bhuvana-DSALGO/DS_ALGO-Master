Feature: User is in  Login page
@Login
Scenario Outline: The user is able to signin with registered credential
Given The user is in the Sign in page
When The user enters a valid "<username>" and "<password>"
Then click login button to verify and pagetitle is "NumpyNinja"
	Examples: 
      | username   | password  |
      | sdetNinja | sdet_109 |
      
Scenario: Verifying Register link
Given The user is in the Sign in page
When The user clicks on register link on signin page
Then The user redirected to Registration page from signin page and title is "Registration"

Scenario Outline: User on login page and login with invalid inputs
Given The user is in the Sign in page
When  The user enter invalid "<username>" and "<password>"
Then click login button to verify and pagetitle should be "Login"
	Examples: 
      | username | password |
      | user     |          |
      |          | passowrd |
      |          |          |

Scenario Outline: Use invalid and valid inputs from Excel on login page and login with 
Given The user is in the Sign in page
When The user enter sheet "<Sheetname>" and <RowNumber>
Then click login button to verify
	 Examples: 
      | Sheetname | RowNumber |
      | Sheet1    |         0 |
      | Sheet1    |         1 |
      | Sheet1    |         2 |
      | Sheet1    |         3 |	
      
Scenario:  Verifying signout link
Given The user is in the Home page with valid log in "sdetNinja" and "sdet_109"
When The user clicks Sign out