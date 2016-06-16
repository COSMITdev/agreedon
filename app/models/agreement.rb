class Agreement < ActiveRecord::Base
  has_many :roles

  accepts_nested_attributes_for :roles, allow_destroy: true

  validates :roles, presence: true
  validates :title, :description, :domain, presence: true
end
