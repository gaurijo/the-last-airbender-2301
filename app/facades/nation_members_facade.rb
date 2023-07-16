class NationMembersFacade
  def self.create_members(nation)
    members = NationMembersService.get_members("#{nation}")
    members.map do |member|
      NationMembers.new(member)
    end
  end
end