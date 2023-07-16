require "rails_helper"

RSpec.describe NationMembers do 
  it "exists" do 
    result = JSON.parse(File.read('spec/fixtures/nation_members.json'), symbolize_names: true)

    members = result.map { |data| NationMembers.new(data) }

    members.each do |member|
      expect(member).to be_a(NationMembers)
    end

    member = members[0]

    expect(member.allies).to eq(["Ozai", "Zuko "])
    expect(member.enemies).to eq(["Iroh", "Zuko", "Kuei", "Long Feng", "Mai", "Ty Lee", "Ursa "])
  end
end