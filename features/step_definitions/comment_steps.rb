Given(/^I have already logged in$/) do
  pending# express the regexp above with the code you wish you had
end

Given(/^I am on a party page$/) do
  visit parties_1_path 
end

When(/^I post a comment "(.*?)"$/) do |c|
    fill_in :body, :with => c
end

Then(/^I should see the comment "(.*?)"$/) do 
  assert_equal 1, Comment.count
end

