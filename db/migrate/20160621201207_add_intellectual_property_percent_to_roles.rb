class AddIntellectualPropertyPercentToRoles < ActiveRecord::Migration
  def change
    add_column :roles, :intellectual_property_percent, :float, null: false, default: 0.0
  end
end
