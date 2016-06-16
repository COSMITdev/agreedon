class AddMarketFieldsToAgreement < ActiveRecord::Migration
  def change
    add_column :agreements, :market_size,                :string, default: ''
    add_column :agreements, :mainly_competitors,         :text,   default: ''
    add_column :agreements, :indirect_competitors,       :text,   default: ''
    add_column :agreements, :how_to_validate_market,     :text,   default: ''
    add_column :agreements, :main_competitive_advantage, :text,   default: ''
    add_column :agreements, :validations_for_the_launch, :text,   default: ''
  end
end
