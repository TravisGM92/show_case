require 'rails_helper'

RSpec.describe 'CRUD page' do
  it "When I visit '/skills/mvc' I see a form to fill to create a new team" do

      visit "/skills/mvc"

      fill_in :team_name, with: "The Purple Stuff"
      fill_in :state, with: "Colorado"
      fill_in :year_of_inception, with: 1980
      click_on("Create team")
      save_and_open_page
      expect(current_path).to eq("/skills/mvc")
      expect(page).to have_content("The Purple Stuff")
      expect(page).to have_content("Colorado")
      expect(page).to have_content(1980)
  end
end
