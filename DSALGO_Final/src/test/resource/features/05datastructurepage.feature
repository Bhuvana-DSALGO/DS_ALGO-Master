Feature: Datastructure module
@datastructure     
Scenario: User is in DataStructure module
Given The user is in the Home page after logged in
And User is clicks on Datastructuregetstarted button
When  user clicks on time complexity sub module
Then user clicks on tryhere button
    
Given user sends valid pythoncode and click on run button and print the output in console
When user navigates refresh
Then user sends invalid syntax and click on run button and capture the alert messsage
And user navigates back
    
Given user clicks on practice Questions
Then user navigates back