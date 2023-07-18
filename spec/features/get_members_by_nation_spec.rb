require "rails_helper"

RSpec.describe "as a visitor", :vcr do 
  it 'has a list of members based on nation' do 

    visit '/'

    select "Fire Nation", :from => :nation

    click_button "Search For Members"

    expect(current_path).to eq("/search")
    expect(page).to have_content("THE FIRE NATION")
    expect(page).to have_content("Azula")
    expect(page).to_not have_content("Aang")
    expect(page).to have_css("img")
  end
end