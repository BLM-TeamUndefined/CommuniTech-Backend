class AddTechStackToOrganization < ActiveRecord::Migration[6.0]
  def change
    add_column :organizations, :tech_stack, :string
  end
end
