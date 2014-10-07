When(/^I visit Spottr web app$/) do
  visit "/welcome/index"
end

Then(/^I should see "(.*?)"$/) do |content|
  page.should have_content("#{content}")
end

Then(/^I click "(.*?)" link$/) do |content|
  click_link content
end

Then(/^I fill "(.*?)" with "(.*?)"$/) do |label, value|
  fill_in label, :with => value
end

Then(/^I choose "(.*?)" from "(.*?)"$/) do |value, select_name|
  select value, :from => "#{select_name}"
end

Then(/^I click "(.*?)" button$/) do |button|
  click_button button
end