require 'rails_helper'

RSpec.describe Character do
  it "exists and has attributes" do
    data = {
      name: 'Aang',
      allies: ["Katara", "Toph", "Sokka"],
      enemies: ["Azula", "Cabbage Man"],
      affiliation: 'Air Nomads',
      photo: nil
    }

    aang = Character.new(data)

    expect(aang).to be_a Character
    expect(aang.name).to eq "Aang"
    expect(aang.allies).to eq(["Katara", "Toph", "Sokka"])
    expect(aang.enemies).to eq(["Azula", "Cabbage Man"])
    expect(aang.affiliation).to eq "Air Nomads"
    expect(aang.photo).to eq nil
  end
end
