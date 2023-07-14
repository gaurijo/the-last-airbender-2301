require "rails_helper"

RSpec.describe AvatarFacade do 
  it "returns data for Avatars" do 
    response = AvatarFacade.create_avatar
    expect(response).to be_a(Array)
    expect(response.first).to be_a(Avatar)
    expect(response.first.affiliation).to eq(" Air Nomads Team Avatar")
  end
end