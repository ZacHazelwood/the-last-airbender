require 'rails_helper'

RSpec.describe 'Search Index Page' do
  it "Welcome Index links to search" do
    visit "/"

    select("Air Nomads")
    click_button("Search For Members")

    expect(current_path).to eq("/search")
  end

  it "displays information" do
    visit "/"

    select("Air Nomads")
    click_button("Search For Members")
# save_and_open_page
    expect(page).to have_content("Members of the Air Nomads")
    expect(page).to have_content("Total Members: 15")

    expect(page).to have_content("Name: Aang")
    expect(page).to have_content("Allies: ")
    expect(page).to have_content("Enemies: ")
    expect(page).to have_content("Affiliation: ")
    expect(page).to have_selector("img")
  end
end
