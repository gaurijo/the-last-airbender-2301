class SearchController < ApplicationController
  def index
    @nation = params[:nation]
    @members = NationMembersFacade.create_members(@nation)
    # find param by nation id 
    # based on nation id returns a list of members
  end
end