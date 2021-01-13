# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'GitHub repos page' do
  describe 'When I visit the projects page' do
    it "after clicking 'All the Repos ever', I should see all of my repos from GitHub" do
      visit '/projects'


    end
  end
end
