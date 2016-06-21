class Agreement < ActiveRecord::Base
  attr_accessor :step

  has_many :roles

  accepts_nested_attributes_for :roles, allow_destroy: true

  validates :title, :description, :domain, presence: true, if: :on_intro_step?
  validates :validation_of_the_agreement, presence: true, if: :on_legal_step?
  validate :has_at_least_one_role, if: :on_team_step?

  protected

  def on_intro_step?
    self.step == 'intro'
  end

  def on_team_step?
    self.step == 'team'
  end

  def on_product_step?
    self.step == 'product'
  end

  def on_market_step?
    self.step == 'market'
  end

  def on_legal_step?
    self.step == 'legal'
  end

  def has_at_least_one_role
    errors.add(:base, 'You must provide at least one role!') if self.roles.blank?
  end
end
