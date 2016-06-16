class AddSecondStepFieldsToAgreement < ActiveRecord::Migration
  def change
    add_column :agreements, :platforms, :string, default: ''
    add_column :agreements, :customers, :text, default: ''
    add_column :agreements, :princing_model, :text, default: ''
    add_column :agreements, :actual_problem, :text, default: ''
    add_column :agreements, :actual_solution, :text, default: ''
    add_column :agreements, :proposed_solution, :text, default: ''
    add_column :agreements, :value_proposition, :text, default: ''
    add_column :agreements, :how_customers_spend_time, :text, default: ''
    add_column :agreements, :product_offered_solutions, :text, default: ''
  end
end
