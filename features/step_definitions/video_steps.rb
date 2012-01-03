Given /^I have no videos$/ do
  Video.delete_all
end

Given /^I (only )?have videos titled "?([^\"]*)"?$/ do |only, titles|
  Video.delete_all if only
  titles.split(', ').each do |title|
    Video.create(:name => title)
  end
end

Then /^I should have ([0-9]+) videos?$/ do |count|
  Video.count.should == count.to_i
end
