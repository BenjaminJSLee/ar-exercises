class Store < ActiveRecord::Base
  has_many :employees 
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { 
    only_integer: true, 
    greater_than_or_equal_to: 0
  }
  validate :must_have_woman_or_man_apparel
  def must_have_woman_or_man_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:store, "must have at least one type of apparel")
    end
  end
end
