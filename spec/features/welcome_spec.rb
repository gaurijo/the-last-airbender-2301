require 'rails_helper'

RSpec.describe 'Welcome Page' do 
  it 'has a dropdown menu to search members by their nation', :vcr do 
    visit '/'

    expect(page).to have_button('Search For Members')
  end

  it 'takes the user to a specific nation where the user can see all members belonging to that nation', :vcr do 
    visit '/'

    expect(current_path).to eq("/")

    select "Fire Nation", :from => :nation

    click_button "Search For Members"

    expect(current_path).to eq("/search")
    # I'll need to consume separate api endpoint to retrieve members by nation affiliation
  end
  
  it 'has a button to see all the Avatars' do 

    visit '/'

    expect(page).to have_button('View All Avatars')
  end

  it 'takes the user to the /avatars path when clicking on the button', :vcr do 

    visit '/'

    expect(current_path).to eq('/')

    click_button('View All Avatars')

    expect(current_path).to eq(avatars_path)
  end
end