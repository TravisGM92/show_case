require 'rails_helper'

RSpec.describe 'Edit team info' do
  it "When I visit '/skills/mvc/teams/:team_id/edit' I see a form to fill to create a new team" do
      team1 = Team.create!(team_name: 'The Dogs', state: 'Colorado', year_of_inception: 1990)

      visit "/skills/mvc"
      within("#team-#{team1.id}") do
        click_on("Edit-team-info")
      end
      
      fill_in :team_name, with: "The Purple Stuff"
      fill_in :state, with: "Colorado"
      fill_in :year_of_inception, with: 1980
      click_on("Create team")
      expect(current_path).to eq("/skills/mvc")
      expect(page).to have_content("The Purple Stuff")
      expect(page).to have_content("Colorado")
      expect(page).to have_content(1980)
  end
end
