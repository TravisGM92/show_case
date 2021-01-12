# frozen_string_literal: true

require 'rails_helper'

describe Player, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :height }
    it { should validate_presence_of :weight }
    it { should validate_presence_of :college }
    it { should validate_presence_of :home_state }
  end

  describe 'relationships' do
    it { should belong_to :team }
  end
end
