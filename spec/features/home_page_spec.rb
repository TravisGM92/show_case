require 'rails_helper'

RSpec.describe 'Home page' do
  it "When I visit '/' I am greeted" do

      visit "/"
      expect(page).to have_content("Welcome to Travis' Website!")
  end
end
