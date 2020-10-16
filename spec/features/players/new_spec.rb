require 'rails_helper'

RSpec.describe 'Player creation' do
  it "When I visit '/skills/mvc' I see a form to fill to add a new player to the team" do
    team1 = Team.create!(team_name: 'The Dogs', state: 'Colorado', year_of_inception: 1990)

    visit "/skills/mvc"
    within("#team-#{team1.id}") do
      click_on("Edit-team-info")
    end

      fill_in :name, with: "George Lupus"
      fill_in :height, with: 75
      fill_in :weight, with: 210
      fill_in :college, with: 'Georgia State'
      fill_in :home_state, with: 'Georgia'
      fill_in :position, with: 'Pitcher'

      click_on("Add player")
      expect(current_path).to eq("/skills/mvc")
      expect(page).to have_content("The Purple Stuff")
      expect(page).to have_content("Colorado")
      expect(page).to have_content(1980)
  end
end
