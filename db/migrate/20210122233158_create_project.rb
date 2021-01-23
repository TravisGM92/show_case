class CreateProject < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description, default: 'NO DESCRIPTION'
      t.string :language, default: 'NO LANGUAGE'
      t.string :url

      t.timestamps
    end
  end
end
