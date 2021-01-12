# frozen_string_literal: true

class Team < ApplicationRecord
  has_many :players

  validates_presence_of :team_name,
                        :state,
                        :year_of_inception
end
