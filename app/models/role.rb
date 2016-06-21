class Role < ActiveRecord::Base
  attr_accessor :step

  belongs_to :agreement

  validates :full_name, :email, :role, presence: true
  validates :intellectual_property_percent, presence: true, if: :on_legal_step?

  protected

  def on_legal_step?
    self.step == 'legal'
  end
end
