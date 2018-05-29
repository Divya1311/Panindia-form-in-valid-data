
Given("when i am in form page") do
  $driver.get 'http://www.panind.com/india/new_pan' # Write code here that turns the phrase above into concrete actions
end

When("i verify panindia page title and current url") do
  pagetitle=$driver.title 
   expectedTitle="New PAN Application Form |Form 49(A) |RIGARO EWORKS"

   actualTtile=pagetitle

   puts (expectedTitle==actualTtile)? "Title is correct" : "Title is incorrect"
   #URL verification
   expectedURL="http://www.panind.com/india/new_pan"
  actualURL=$driver.current_url
  puts (expectedURL==actualURL)? "Current url is valid": "Current url is invalid"
end  

When("click on logo should navigate to home page") do
  logo=$driver.find_element(:xpath, ".//*[@id='container']/div[2]/div/div[1]/a/img")
  logo.click
  sleep 2

$driver.navigate.back()
sleep 2
end 

When("i enter the Firstname") do
  $driver.find_element(:id, "pan_firstname").send_keys("test") # Write code here that turns the phrase above into concrete actions
end

When("i enter the middle name") do
  $driver.find_element(:id, "pan_middlename").send_keys("first")
  # Write code here that turns the phrase above into concrete actions
end

When("i enter the surname") do
   $driver.find_element(:id, "pan_lastname").send_keys("user") # Write code here that turns the phrase above into concrete actions
end

When("i enter the Father's firstname") do
   $driver.find_element(:id, "pan_fatherfirstname").send_keys("second") # Write code here that turns the phrase above into concrete actions
end

When("i enter the Father's middle name") do
   $driver.find_element(:id, "pan_fathermiddlename").send_keys("test") # Write code here that turns the phrase above into concrete actions
end

When("i enter the Father's surname") do
   $driver.find_element(:id, "pan_fatherlastname").send_keys("user2") # Write code here that turns the phrase above into concrete actions
end

When("i enter e-mail id") do
   $driver.find_element(:id, "pan_email").send_keys("test@gmail.com") # Write code here that turns the phrase above into concrete actions
end

When("i enter mobile number") do
   $driver.find_element(:id, "pan_mobilenumber").send_keys(9756667661) # Write code here that turns the phrase above into concrete actions
end

When("i click on source dropdown") do
   $driver.find_element(:id, "pan_sourceofincome").click() # Write code here that turns the phrase above into concrete actions
end

Then("display the list of values") do
   source=$driver.find_element(:id, "pan_sourceofincome")
   puts source.text()
# Write code here that turns the phrase above into concrete actions
end

When("i select source value") do
  element=$driver.find_element(:id, "pan_sourceofincome")

  option=element.find_elements(:tag_name,"option")

  puts option.count

option.each do |k|
  puts "value is #{k.attribute("text")}"
  if k.attribute("text")=="Salary"
    k.click
    sleep 3
  end
end
   #$driver.find_element(:xpath, "//select[contains(text(), 'Salary')]").click()
end

When("i select address radio button") do
  radio=["residence","office"]

for i in radio do
  radioelement=$driver.find_element(:id,i)

  enable=radioelement.enabled?
  puts enable

  for j in 1..2 do
    radioelement.click()
    selection=radioelement.selected?
    puts "Radio button is Displayed after #{j} time click: #{selection}"
  end
end#To verify by default Residence radio button is selected or not
end 
   # Write code here that turns the phrase above into concrete actions

When("i enter date of birth") do
   $driver.find_element(:id, "pan_dob").send_keys(12/01/1989)
    # Write code here that turns the phrase above into concrete actions
end

When("I enter house number") do
   $driver.find_element(:id, "pan_addressline1").send_keys("No 125a")
   sleep 3# Write code here that turns the phrase above into concrete actions
end

When("i enter area") do
   $driver.find_element(:id, "pan_addressline2").send_keys("J.D.Road")# Write code here that turns the phrase above into concrete actions
end

When("i enter the city") do
  $driver.find_element(:id, "pan_cityname").send_keys("Bargur") # Write code here that turns the phrase above into concrete actions
end

When("i enter the pintcode") do
  sleep 3
   $driver.find_element(:xpath, "//input[@name='pan_pincode']").send_keys(635104)
  # Write code here that turns the phrase above into concrete actions
end

When("i enter the state") do
  sleep 3
   $driver.find_element(:id, "pan_state").send_keys("Tamilnadu")# Write code here that turns the phrase above into concrete actions
end

When("i enter the country") do
  country=$driver.find_element(:id, "pan_country")
  country.click()
  if (country).displayed?
  puts "By default country India is displayed"
  else
  puts "not displayed"
  end # Write code here that turns the phrase above into concrete actions
end

When("i enter office name") do
  $driver.find_element(:id, "pan_officename").send_keys("V-Hi-Techlab") # Write code here that turns the phrase above into concrete actions
end

When("I enter house no") do
  $driver.find_element(:id, "pan_officeaddressline1").send_keys("first dross street")
   sleep 3 # Write code here that turns the phrase above into concrete actions
end

When("i enter areaname") do
  $driver.find_element(:id, "pan_officeaddressline2").send_keys("Rajivgandhi salai")# Write code here that turns the phrase above into concrete actions
end

When("i enter the city name") do
  $driver.find_element(:id, "pan_officecityname").send_keys("Chennai") # Write code here that turns the phrase above into concrete actions
end

When("i enter the area pintcode") do
  $driver.find_element(:id, "pan_officepincode").send_keys(600097) # Write code here that turns the phrase above into concrete actions
end

When("i enter the state name") do
  $driver.find_element(:id, "pan_officestate").send_keys("Tamilnadu") # Write code here that turns the phrase above into concrete actions
end

When("i enter the country name") do
  country=$driver.find_element(:id, "pan_officecountry")
  country.click()
  if (country).displayed?
  puts "By default country India is displayed"
  else
  puts "not displayed"
  end # Write code here that turns the phrase above into concrete actions
end


When("I click on Idproof dropdown") do
  $driver.find_element(:name, "pan_identityproof")
  # Write code here that turns the phrase above into concrete actions
end

When("i select the value fron proof") do
  element1=$driver.find_element(:name, "pan_identityproof")
  idoption=element1.find_elements(:tag_name,"option")

  puts idoption.count

  idoption.each do |i|
  puts "value is #{i.attribute("text")}"
  if i.attribute("text")=="PASSPORT (In Copy)"
    i.click
    sleep 3
  end
end
 # Write code here that turns the phrase above into concrete actions
end

When("I click on Address proof dropdown") do
  $driver.find_element(:id, "pan_addressproof")# Write code here that turns the phrase above into concrete actions
end

When("I select the type of address proof") do
 element2=$driver.find_element(:name, "pan_addressproof")
  addressoption=element2.find_elements(:tag_name,"option")

  puts addressoption.count

  addressoption.each do |j|
  puts "value is #{j.attribute("text")}"
  if j.attribute("text")=="Aadhar Card issued by UIDAI(In Copy)"
    j.click
    sleep 3
  end
end  
end

When("I click on Dob proof dropdown") do
   $driver.find_element(:id, "pan_DOBproof")# Write code here that turns the phrase above into concrete actions
end

When("I select the type of DOB proof") do
  element3=$driver.find_element(:id, "pan_DOBproof")
   doboption=element3.find_elements(:tag_name,"option")

  puts doboption.count

  addressoption.each do |l|
  puts "value is #{l.attribute("text")}"
  if l.attribute("text")=="Driving License (In Copy)"
    l.click
    sleep 3
  end
end  
   # Write code here that turns the phrase above into concrete actions
end

When("I click on Aadhar proof dropdown") do
   $driver.find_element(:id, "pan_aadhaarproof")# Write code here that turns the phrase above into concrete actions
end

When("I select the type of Aadhar proof") do
  element5=$driver.find_element(:id, "pan_aadhaarproof")
  element5.click
   aadharoption=element5.find_elements(:tag_name,"option")

  puts aadharoption.count

  aadharoption.each do |m|
  puts "value is #{m.attribute("text")}"
  if m.attribute("text")=="Copy of Aadhaar Card/Letter"
    m.click
    sleep 3
  end
end 
end

When("I click on office proof dropdown") do
   $driver.find_element(:name, "pan_officeaddressproof")# Write code here that turns the phrase above into concrete actions
end

When("I select the type of office proof") do
  element6=$driver.find_element(:name, "pan_officeaddressproof")
  element6.click
   officeoption=element6.find_elements(:tag_name,"option")

  puts officeoption.count

  officeoption.each do |n|
  puts "value is #{n.attribute("text")}"
  if n.attribute("text")=="Office Property Tax Assessment Order"
    n.click
    sleep 3
  end
end   # Write code here that turns the phrase above into concrete actions
end

Then("click on next button") do
   $driver.find_element(:class, "next action-button").click()
end  
