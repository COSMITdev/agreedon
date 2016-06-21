class AddRoleFieldsToTeamMembers < ActiveRecord::Migration
  def change
    add_column :roles, :ux,                    :boolean, default: false
    add_column :roles, :design,                :boolean, default: false
    add_column :roles, :devops,                :boolean, default: false
    add_column :roles, :marketing,             :boolean, default: false
    add_column :roles, :custom_role,           :string,  default: ''
    add_column :roles, :copywriting,           :boolean, default: false
    add_column :roles, :quality_assurance,     :boolean, default: false
    add_column :roles, :product_management,    :boolean, default: false
    add_column :roles, :back_end_development,  :boolean, default: false
    add_column :roles, :front_end_development, :boolean, default: false
  end
end
