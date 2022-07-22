class SearchController < ApplicationController
  def index
    @nation = params[:nation]
    @all_characters = TheLastAirbenderFacade.create_character_data_from_nation(@nation)
    @twenty_five_characters = @all_characters[0..24]
  end
end
