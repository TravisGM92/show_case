# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Home page' do
  it "When I visit '/' I am greeted" do
    visit '/'
    expect(page).to have_content("Who is Travis?\nNot sure how I got here\nContact Travis")
    expect(page).to have_content("Welcome to Travis' website...\n")
  end
  it "when I click on 'Not Sure How I Got Here' Im redirected" do
    visit '/'
    click_button('Not sure how I got here')
    expect(current_path).to eq('/surprise')
  end
end
