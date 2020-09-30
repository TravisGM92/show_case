require 'rails_helper'

RSpec.describe 'Home page' do
  it "When I visit '/' I am greeted" do

      visit "/"
      expect(page).to have_content("Welcome to Travis' Website!")
      expect(page).to have_content("I am a software developer and")
      expect(page).to have_content("Turing")
      expect(page).to have_content("Front Range")
      expect(page).to have_content("Education")
  end
end
