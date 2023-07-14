class AvatarsController < ApplicationController 
  def index
    @avatars = AvatarFacade.create_avatar
  end
end