class AddDescriptionToOrganization < ActiveRecord::Migration[6.0]
  def change
    add_column :organizations, :description, :string
  end
end
