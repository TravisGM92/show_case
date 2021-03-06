# frozen_string_literal: true

class Project < ApplicationRecord
  validates_presence_of :name, :url
end
