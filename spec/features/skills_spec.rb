require 'rails_helper'

RSpec.describe 'Skills' do
  describe "When I visit '/about_me'" do
    it "I see a link 'click here!' and when I click that link" do

      visit "/about_me"
      expect(page).to have_content("About Me")
      expect(page).to have_link("click here!")
    end
  end
  describe "When I am on the '/skills' page" do
    it "I see 'SQL', 'MVC', 'active record'" do
      visit "/about_me"
      click_link("click here!")
      expect(current_path).to eq("/skills")
      expect(page).to have_content("SQL")
      expect(page).to have_content("MVC")
    end
  end
  describe "When I go to '/skills' and click on 'MVC'" do
    it "I'm redirected to a page that shows the MVC I've been learning" do
      visit "/skills"
    end
  end
  describe "When I go to '/skills' and click on 'CRUD Functionality'" do
    it "I'm redirected to a page that shows the CRUD functions I've been learning" do
      visit "/skills"
      expect(page).to have_link("CRUD Functionality")
      click_link("CRUD Functionality")
      expect(current_path).to eq("/skills/mvc")
      expect(page).to have_content("")
    end
  end

end
