require "rails_helper"

RSpec.describe NationMembersFacade, :vcr do 
  it "takes in a nation and returns a list of members data" do 
    response = NationMembersFacade.create_members("Air Nomads")

    expect(response).to be_a(Array)
  end
end