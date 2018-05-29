Given("when i am in home page") do
  $driver.get 'http://www.panind.com/india/new_pan' # Write code here that turns the phrase above into concrete actions
end

When("i enter the invalid date") do
  sleep 2
  element=$driver.find_element(:name, "pan_dob")
  element.send_keys(12-8-1990)
  $driver.find_element(:name, "pan_addressline1")
  popup=$driver.switch_to.alert.accept()
  puts "(popup).displayed? #{popup is displayed}" # Write code here that turns the phrase above into concrete actions
end

Then("capture the popup window") do
  pending # Write code here that turns the phrase above into concrete actions
end
