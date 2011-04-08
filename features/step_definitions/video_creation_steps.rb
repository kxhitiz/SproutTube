Given /^when I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end


Given /^When I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

Given /^When I select "([^"]*)" from "([^"]*)"$/ do |value, option|
  select(value, :from => option)
end

Then /^I sleep for "([^"]*)" seconds$/ do |arg1|
  sleep(arg1.to_i)
end

Then /^I sleep for "([^"]*)" seconds so that I can see the last output message clearly$/ do |arg1|
  sleep(arg1.to_i)
end

Then /^When I follow "([^"]*)"$/ do |arg1|
  click_link(arg1)
end

Then /^I clicked "([^"]*)"$/ do |arg1|
  click_link(arg1)
end