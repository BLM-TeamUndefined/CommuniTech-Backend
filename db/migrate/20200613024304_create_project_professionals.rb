class CreateProjectProfessionals < ActiveRecord::Migration[6.0]
  def change
    create_table :project_professionals do |t|
      t.belongs_to :professional, null: false, foreign_key: true
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
