Feature: Form with valid input
Scenario: To validate the form with valid data
Given when i am in form page
When i verify panindia page title and current url
When click on logo should navigate to home page
When i enter the Firstname
When i enter the middle name
When i enter the surname
When i enter the Father's firstname
When i enter the Father's middle name
When i enter the Father's surname
When i enter e-mail id
When i enter mobile number
When i click on source dropdown 
Then display the list of values
When i select source value
When i select address radio button
When i enter date of birth

Scenario: To validate the residence address with valid input
When I enter house number
When i enter area
When i enter the city
When i enter the pintcode
When i enter the state
When i enter the country

Scenario: To validate the office address with valid input
When i enter office name
When I enter house no
When i enter areaname
When i enter the city name
When i enter the area pintcode
When i enter the state name
When i enter the country name

Scenario: To validate Doccuments submited with valid data
When I click on Idproof dropdown
When i select the value fron proof 
When I click on Address proof dropdown
When I select the type of address proof 
When I click on Dob proof dropdown
When I select the type of DOB proof 
When I click on Aadhar proof dropdown
When I select the type of Aadhar proof
When I click on office proof dropdown
When I select the type of office proof
Then click on next button