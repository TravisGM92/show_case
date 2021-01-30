# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Contact page' do
  it 'Has certain text and links' do
    visit('/contact')

    expect(page).to have_content('Go back home!')
    page.find('#linkedin')
    page.find('#github')
  end
end
