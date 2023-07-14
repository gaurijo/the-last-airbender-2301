require 'rails_helper'

RSpec.describe "as a visitor", :vcr do 
  it 'has a list of avatars' do

    visit "/avatars"

    expect(page).to have_content("Aang")
  end
end