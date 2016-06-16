class Role < ActiveRecord::Base
  belongs_to :agreement

  validates :full_name, :email, :role, presence: true
end
