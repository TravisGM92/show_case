# frozen_string_literal: true

class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :state
      t.integer :year_of_inception
    end
  end
end
