class AddAditionalInfoToAgreements < ActiveRecord::Migration
  def change
    add_column :agreements, :aditional_info, :text, default: ''
  end
end
