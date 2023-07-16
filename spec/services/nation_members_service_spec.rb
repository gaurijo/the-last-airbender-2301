require "rails_helper"

RSpec.describe NationMembersService, :vcr do 
  it "returns all members affiliated with a particular Nation" do 

    members = NationMembersService.get_members("Air Nomads")

    expect(members).to be_a(Array)
  end
end