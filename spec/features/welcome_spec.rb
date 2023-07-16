require 'rails_helper'

RSpec.describe 'Welcome Page' do 
  it 'has a dropdown menu to search members by their nation' do 
    visit '/'

    expect(page).to have_button('Search For Members')
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