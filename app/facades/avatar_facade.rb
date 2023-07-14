class AvatarFacade
  def self.create_avatar
    avatars = AvatarService.get_avatars
    avatars.map do |avatar|
      Avatar.new(avatar)
    end
  end
end