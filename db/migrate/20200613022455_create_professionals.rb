class CreateProfessionals < ActiveRecord::Migration[6.0]
  def change
    create_table :professionals do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :tech_stack
      t.string :bio
      t.string :profession

      t.timestamps
    end
  end
end
