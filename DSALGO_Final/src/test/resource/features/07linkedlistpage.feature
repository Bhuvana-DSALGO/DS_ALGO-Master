Feature: Linked List Module
@linkedlist
Scenario Outline: The user is able to signin with registered credential
Given The user is in the Sign in page
When The user enters a valid "<username>" and "<password>"
Then click login button to verify and pagetitle is "NumpyNinja"
	Examples: 
      | username   | password  |
      | sdetNinja | sdet_109 |
      
Scenario: User navigated to "linked list" page
Given The user is in the Home page after logged in
When The user selecting "Linked List" item from the drop down menu
Then The user should be directed to "Linked List" Page

Scenario: User navigated to "Introduction" page
Given The user is in the "Linked List" page after logged in
When The user clicks "Introduction" link of Linked List page
Then The user should be directed to "Introduction" Page

Scenario:  User navigated to tryEditor page with Run button from Introduction page
Given The user is on the "Introduction" page of Linked List after logged in
When The user clicks Try Here button
Then The user should be redirected to a page having an tryEditor with a Run button to test

Scenario Outline: The user run the code in tryEditor with valid input for Introduction page
Given The user is in a try here page having tryEditor with a Run button to test
When The user Enter valid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
And user click on Run button
Then The user should be presented with the Run output
 Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         0 |
      
Scenario Outline: The user getting error message with invalid python code for Introduction page
Given The user is in a try here page having tryEditor with a Run button to test
When The user Enter invalid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
And user click on Run button
Then The user should be presented with the Run output with alert
	Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
      
Scenario: User navigated to "Creating Linked LIst" page
Given The user is in the "Linked List" page after logged in
When The user clicks "Creating Linked LIst" link of Linked List page
Then The user should be directed to "Creating Linked LIst" Page

Scenario: User navigated to tryEditor page with Run button from Creating a Linked List page
Given The user is on the "Creating a Linked List" page of Linked List after logged in
When The user clicks Try Here button
Then 	The user should be redirected to a page having an tryEditor with a Run button to test

Scenario Outline: The user run the code in tryEditor with valid input for Creating a Linked List page
Given The user is in a try here page having tryEditor with a Run button to test
When The user Enter valid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
And user click on Run button
Then The user should be presented with the Run output
	Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         0 |
      
Scenario Outline: The user getting error message with invalid python code for Creating a Linked List page
Given The user is in a try here page having tryEditor with a Run button to test
When The user Enter invalid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
And user click on Run button
Then The user should be presented with the Run output with alert
	Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
      
Scenario: User navigated to "Types of linked list" page
Given The user is in the "Linked List" page after logged in
When The user clicks "Types of Linked List" link of Linked List page
Then The user should be directed to "Types of Linked List" Page

Scenario: User navigated to tryEditor page with Run button from Types of Linked List
Given The user is on the "Types of Linked list" page of Linked List after logged in
When The user clicks Try Here button
Then The user should be redirected to a page having an tryEditor with a Run button to test

Scenario Outline: The user run the code in tryEditor with valid input for Creating a Linked List page
Given The user is in a try here page having tryEditor with a Run button to test
When The user Enter valid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
And user click on Run button
Then The user should be presented with the Run output
	Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         0 |
      
Scenario Outline: The user getting error message with invalid python code for Creating a Linked List page
Given The user is in a try here page having tryEditor with a Run button to test
When The user Enter invalid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
And user click on Run button
Then The user should be presented with the Run output with alert
	Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
      
Scenario: user navigated to "Implementation linked list in python" page
Given The user is in the "Linked List" page after logged in
When The user clicks "Implement Linked List in Python" link of Linked List page
Then The user should be directed to "Implement Linked List in Python" Page

Scenario: User navigated to tryEditor page with Run button from Types of Linked List
Given The user is on the "Implement Linked List in Python" page of Linked List after logged in
When The user clicks Try Here button
Then The user should be redirected to a page having an tryEditor with a Run button to test

Scenario Outline: The user run the code in tryEditor with valid input for Creating a Linked List page
Given The user is in a try here page having tryEditor with a Run button to test
When The user Enter valid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
And user click on Run button
Then The user should be presented with the Run output
	Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         0 |
      
Scenario Outline: The user getting error message with invalid python code for Creating a Linked List page
Given The user is in a try here page having tryEditor with a Run button to test
When The user Enter invalid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
And user click on Run button
Then The user should be presented with the Run output with alert
	Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |

Scenario: user navigated to "Traversal" page
Given The user is in the "Linked List" page after logged in
When The user clicks "Traversal" link of Linked List page
Then The user should be directed to "Traversal" Page

Scenario: User navigated to tryEditor page with Run button from Types of Linked List
Given The user is on the "Traversal" page of Linked List after logged in
When The user clicks Try Here button
Then The user should be redirected to a page having an tryEditor with a Run button to test

Scenario Outline: The user run the code in tryEditor with valid input for Creating a Linked List page
Given The user is in a try here page having tryEditor with a Run button to test
When The user Enter valid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
And user click on Run button
Then The user should be presented with the Run output
	Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         0 |
      
Scenario Outline: The user getting error message with invalid python code for Creating a Linked List page
Given The user is in a try here page having tryEditor with a Run button to test
When The user Enter invalid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
And user click on Run button
Then The user should be presented with the Run output with alert
	Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
      
Scenario: user navigated to "Insertion" page
Given The user is in the "Linked List" page after logged in
When The user clicks "Insertion" link of Linked List page
Then The user should be directed to "Insertion" Page

Scenario: User navigated to tryEditor page with Run button from Types of Linked List
Given The user is on the "Insertion" page of Linked List after logged in
When The user clicks Try Here button
Then The user should be redirected to a page having an tryEditor with a Run button to test

Scenario Outline: The user run the code in tryEditor with valid input for Creating a Linked List page
Given The user is in a try here page having tryEditor with a Run button to test
When The user Enter valid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
And user click on Run button
Then The user should be presented with the Run output
	Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         0 |
      
Scenario Outline: The user getting error message with invalid python code for Creating a Linked List page
Given The user is in a try here page having tryEditor with a Run button to test
When The user Enter invalid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
And user click on Run button
Then The user should be presented with the Run output with alert
	Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |
      
Scenario: user navigated to "Deletion" page
Given The user is in the "Linked List" page after logged in
When The user clicks "Deletion" link of Linked List page
Then The user should be directed to "Deletion" Page

Scenario: User navigated to tryEditor page with Run button from Types of Linked List
Given The user is on the "Deletion" page of Linked List after logged in
When The user clicks Try Here button
Then The user should be redirected to a page having an tryEditor with a Run button to test

Scenario Outline: The user run the code in tryEditor with valid input for Creating a Linked List page
Given The user is in a try here page having tryEditor with a Run button to test
When The user Enter valid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
And user click on Run button
Then The user should be presented with the Run output
	Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         0 |
      
Scenario Outline: The user getting error message with invalid python code for Creating a Linked List page
Given The user is in a try here page having tryEditor with a Run button to test
When The user Enter invalid python code in tryEditor from sheet "<Sheetname>" and <RowNumber>
And user click on Run button
Then The user should be presented with the Run output with alert
	Examples: 
      | Sheetname  | RowNumber |
      | pythonCode |         1 |

Scenario: The user validating "Practice Questions" page
Given The user is in the "Linked List" page after logged in
When The user clicks "Introduction" link of Linked List page
And The user clicks on the "Practice Questions"
Then The user should be directed to "Practice Questions" Page