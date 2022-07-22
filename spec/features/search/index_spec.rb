require 'rails_helper'

RSpec.describe 'Search Index Page' do
  it "Welcome Index links to search" do
    visit "/"

    select("Air Nomads")
    click_button("Search For Members")

    expect(current_path).to eq("/search")
  end
end
