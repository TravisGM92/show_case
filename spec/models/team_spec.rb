# frozen_string_literal: true

require 'rails_helper'

describe Team, type: :model do
  describe 'validations' do
    it { should validate_presence_of :team_name }
    it { should validate_presence_of :state }
    it { should validate_presence_of :year_of_inception }
  end

  describe 'relationships' do
    it { should have_many :players }
  end
end
