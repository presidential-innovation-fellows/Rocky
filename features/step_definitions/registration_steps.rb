Given /^I have completed step 1$/ do
  @registrant = Factory.create(:step_1_registrant)
end

When /^I am (\d+) years old$/ do |age|
  fill_in("date of birth", :with => age.to_i.years.ago.to_date)
end

Given /^I have not set a locale$/ do
  I18n.locale = nil
end

Given /^I have completed step 2$/ do
  @registrant = Factory.create(:step_2_registrant)
end

Given /^I am a first time registrant$/ do
  @registrant.first_registration = true
  @registrant.save
end
