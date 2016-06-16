class Agreement < ActiveRecord::Base
  has_many :roles

  accepts_nested_attributes_for :roles, allow_destroy: true

  validates :roles, presence: true
  validates :title, :description, :domain, :platforms, :actual_problem, :proposed_solution,
            :value_proposition, :product_offered_solutions, presence: true
end
