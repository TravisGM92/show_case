# frozen_string_literal: true

class Player < ApplicationRecord
  belongs_to :team
  validates_presence_of :name,
                        :height,
                        :weight,
                        :college,
                        :home_state
end
