require 'rails_helper'

RSpec.describe 'Edit team info' do
  describe "When I visit '/skills/mvc/teams/:team_id/edit' I see a form to edit team info " do
    it "and I see all players, if any, and a form to add a new player to the team" do
      team1 = Team.create!(team_name: 'The Dogs', state: 'Colorado', year_of_inception: 1990)

      visit "/skills/mvc"
      within("#team-#{team1.id}") do
        click_on("Edit-team-info")
      end

      page.fill_in 'team-name', with: "The Purple Stuff"
      fill_in :state, with: "Colorado"
      page.fill_in 'year', with: 1980
      click_button("Update team")
      expect(current_path).to eq("/skills/mvc")
      expect(page).to have_content("The Purple Stuff")
      expect(page).to have_content("Colorado")
      expect(page).to have_content(1980)
    end
  end
end
