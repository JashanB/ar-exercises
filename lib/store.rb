class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}
  validate :must_carry_one
  def must_carry_one
    if mens_apparel == false && womens_apparel == false
      errors.add("must sell something")
    end
  end
end
