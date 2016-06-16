class AddLegalFieldsToAgreement < ActiveRecord::Migration
  def change
    add_column :agreements, :aditional_rules,             :string, default: ''
    add_column :agreements, :validation_of_the_agreement, :string, default: ''
  end
end
