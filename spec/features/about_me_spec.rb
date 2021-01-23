# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'About Me page' do
  it "When I visit '/about_me' I see..." do
    visit '/about_me'
    expect(page).to have_content("Go back home!\nSweet Projects\nContact Travis\nWho is Travis?\n")
  end
end
