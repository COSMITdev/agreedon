class ChangeDefaultValueForCustomRole < ActiveRecord::Migration
  def change
    change_column :roles, :custom_role, :string, default: ''
  end
end
