require 'rails_helper'

RSpec.describe "as a visitor", :vcr do 
  it 'has a list of avatars, an image' do

    visit "/avatars"

    expect(page).to have_content("Aang")
    expect(page).to have_css("img")
  end
end