require "rails_helper"

RSpec.describe AvatarService do 
  it "returns all Avatar characters" do 
    avatars = AvatarService.get_avatars

      expect(avatars[3][:name]).to eq("Korra")

    avatars.each do |avatar|
      expect(avatar).to be_a(Hash)
      expect(avatar).to have_key(:_id)
      expect(avatar).to have_key(:name)
      expect(avatar).to have_key(:gender)
      expect(avatar).to have_key(:enemies)
      expect(avatar[:enemies]).to be_a(Array)
    end
  end
end