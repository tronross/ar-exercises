class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  validate :must_carry_either_mens_or_womens_apparel

  def must_carry_either_mens_or_womens_apparel
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:must_carry_either_mens_or_womens_apparel, "must sell either men's apparel or women's apparel.")
    end
  end
end
