class TheLastAirbenderFacade

  def self.create_character_data_from_nation(nation_name)
    json = TheLastAirbenderService.get_last_airbender_data("api/v1/characters?affiliation=#{nation_name}&perPage=25")
    # require "pry"; binding.pry
    # data = json[:data]
    json.map do |character|
      Character.new(character)
    end
  end
end
