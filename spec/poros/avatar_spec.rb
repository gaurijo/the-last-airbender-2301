require "rails_helper"

RSpec.describe Avatar do 
  it 'exists' do
    result = JSON.parse(File.read('spec/fixtures/avatars.json'), symbolize_names: true)
    
    ## accessing each avatar's data, so you need to map through fixture data and feed in each instance of the avatar array into a new array object
    avatars = result.map { |data| Avatar.new(data) }

    avatars.each do |avatar|
      expect(avatar).to be_a(Avatar)
    end
    avatar = avatars[0]
    
    expect(avatar.name).to eq("Aang (pilot)")
    expect(avatar.weapon).to eq("Air, ")
    expect(avatar.affiliation).to eq(" Air Nomads Team Avatar")
  end
end