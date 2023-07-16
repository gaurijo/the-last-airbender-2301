require "rails_helper"

RSpec.describe "as a visitor", :vcr do 
  it 'has a list of members based on nation' do 

    visit '/'

    select "Fire Nation", :from => :nation

    click_button "Search For Members"

    expect(current_path).to eq("/search")
  end
end