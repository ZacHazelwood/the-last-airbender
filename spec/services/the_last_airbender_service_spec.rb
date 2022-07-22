require 'rails_helper'

RSpec.describe TheLastAirbenderService do
  describe "avatar endpoint" do
    it "establishes a connection" do
      conn = TheLastAirbenderService.conn
      expect(conn.class).to eq(Faraday::Connection)
    end

    it "gets character data from endpoint" do
      nation_name = "Fire+Nation"
      parsed_json = TheLastAirbenderService.get_last_airbender_data("api/v1/characters?affiliation=#{nation_name}&perPage=150")

      expect(parsed_json).to be_a Array
      expect(parsed_json.length).to eq 97
      expect(parsed_json[0]).to have_key :affiliation
    end
  end
end
