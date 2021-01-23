# frozen_string_literal: true

require 'rails_helper'

describe Project, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :url }
  end

  describe 'API call' do
    it 'only makes one API call a day' do
      expect(Project.all).to eq([])
      ProjectService.get_projects
      expect(Project.all).to_not be_empty
    end
  end
end
