Given /^I am authenticated$/ do
  Person.create!(:name => "admin", :email => "admin@sprout-tube.com", :password => "admingod")
  visit('/people/sign_in')
  fill_in "Email", :with => 'admin@sprout-tube.com'
  fill_in "Password", :with => 'admingod'
  click_button "Sign in"
end