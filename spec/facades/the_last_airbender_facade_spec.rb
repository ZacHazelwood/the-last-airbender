require 'rails_helper'

RSpec.describe TheLastAirbenderFacade do
  it "gets characters from a nation" do
    characters = TheLastAirbenderFacade.create_character_data_from_nation("Fire+Nation")

    expect(characters).to be_a Array
    expect(characters).to be_all Character
    expect(characters.count).to eq 97
  end
end
