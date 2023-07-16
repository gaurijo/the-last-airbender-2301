require "rails_helper"

RSpec.describe NationMembersFacade, :vcr do 
  it "takes in a nation and returns a list of members data" do 
    response = NationMembersFacade.create_members("Air Nomads")

    expect(response).to be_a(Array)
    expect(response.first).to be_a(NationMembers)
    expect(response.first.allies).to eq(["Kya"])
  end
end