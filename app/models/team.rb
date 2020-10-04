class Team < ApplicationRecord
  # has_many :item_orders, through: :items

validates_presence_of :team_name,
                      :state,
                      :year_of_inception
end
