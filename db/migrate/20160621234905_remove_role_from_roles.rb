class RemoveRoleFromRoles < ActiveRecord::Migration
  def change
    remove_column :roles, :role, :string
  end
end
