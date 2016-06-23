class RenameProductOfferedSolutionsToCustomersLocationOnAgreement < ActiveRecord::Migration
  def change
    rename_column :agreements, :product_offered_solutions, :customers_location
  end
end
