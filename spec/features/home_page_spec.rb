# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Home page' do
  it "When I visit '/' I am greeted" do
    visit '/'
    expect(page).to have_content("Welcome to Travis' website...\nWho is Travis?\nNot sure how I got here\nContact Travis")
  end
end
