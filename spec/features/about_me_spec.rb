# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'About Me page' do
  it "When I visit '/about_me' I see..." do
    visit '/about_me'
    expect(page).to have_content("Who is Travis?\n")
  end
end
