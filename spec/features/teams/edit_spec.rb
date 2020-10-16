require 'rails_helper'

RSpec.describe 'Edit team info' do
  describe "When I visit '/skills/mvc/teams/:team_id/edit' I see a form to edit team info " do
    it "and I see all players, if any" do
      team1 = Team.create!(team_name: 'The Dogs', state: 'Colorado', year_of_inception: 1990)

      visit "/skills/mvc"
      within("#team-#{team1.id}") do
        click_on("Edit-team-info")
      end

      fill_in :team_name, with: "The Purple Stuff"
      fill_in :state, with: "Utah"
      fill_in :year_of_inception, with: 1980
      click_on("Update team")

      expect(page).to have_content("The Purple Stuff")
      expect(page).to have_content("Utah")
      expect(page).to have_content(1980)
    end
  end
end
