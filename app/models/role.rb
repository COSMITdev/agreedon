class Role < ActiveRecord::Base
  attr_accessor :step

  belongs_to :agreement

  validates :full_name, :email, presence: true
  validates :intellectual_property_percent, presence: true, if: :on_legal_step?
  validate :has_at_least_one_role, if: :on_team_step?

  protected

  def on_team_step?
    self.step == 'team'
  end

  def on_legal_step?
    self.step == 'legal'
  end

  def has_at_least_one_role
    if self.ux.blank? && self.design.blank? && self.devops.blank? &&
       self.marketing.blank? && self.custom_role.blank? && self.copywriting.blank? &&
       self.quality_assurance.blank? && self.product_management.blank? &&
       self.back_end_development.blank? && self.front_end_development.blank?

       errors.add(:front_end_development, 'You need to choose at least one role!')
    end
  end
end
