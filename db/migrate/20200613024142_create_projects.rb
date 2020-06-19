class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.belongs_to :organization, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.string :expectations
      t.string :timeline
      t.string :team_size

      t.timestamps
    end
  end
end
