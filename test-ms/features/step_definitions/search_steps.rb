Given(/^I have entered a valid search term of "([^"]*)"$/) do |term|
  @homepage.global_search.set(term)
end

Given(/^I have entered a invalid search term of "([^"]*)"$/) do |invalid_term|
  @homepage.global_search.set(invalid_term)
end

When(/^I hit the search button$/) do
  @homepage.search_button.click
end

Then(/^I should have a list of items related to my search with "([^"]*)" displayed$/) do |message|
   expect(@homepage.search_message.text).to eq(message.to_s)
end

Then(/^I should see a list of results related to the search term$/) do
  expect(@homepage.search_counts.first.text.to_i).to be > 1
end

Then(/^I should see an empty list$/) do
  expect(@homepage.no_result).to be_visible
end

Given(/^I have entered a valid search term "([^"]*)"$/) do |search_term|
  @homepage.global_search.set(search_term)
end

Then(/^I should have a list of items related to my search$/) do
    expect(@homepage.search_result).to be_visible
end

When(/^I select the first item from the search$/) do
  @homepage.list_of_products.first.click
end

Then(/^I should be on the item details page$/) do
  @homepage.wait_for_product_detail_page
  expect(@homepage.product_detail_page).to be_visible
end

When(/^I browse to "([^"]*)" category$/) do |category|
  @homepage.find_text( @homepage.categories, category).click
end

Then(/^I should be on the "([^"]*)" category page$/) do |result|
  expect( @homepage.cat_name.text.upcase).to eq(result.to_s)
end

Given(/^I search for location in "([^"]*)"$/) do |location|
  @homepage.location_link.click
  @homepage.store_search.set(location)
  @homepage.location_btn.click
  sleep 4
end

Then(/^I should see "([^"]*)" store on the list$/) do |store|
  expect(@homepage.list_of_stores.first.text).to eq(store)
end

