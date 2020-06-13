class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :category
      t.string :email
      t.integer :phone
      t.string :mission
      t.string :location
      t.string :image
      t.string :website
      t.string :twitter
      t.string :instagram
      t.string :facebook
      t.string :logo

      t.timestamps
    end
  end
end
