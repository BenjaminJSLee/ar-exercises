class Store < ActiveRecord::Base
  has_many :employees 
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { 
    only_integer: true, 
    greater_than_or_equal_to: 0
  }
  validate :has_womens_or_mens_apparel

  before_destroy :has_employees

  private

  def has_womens_or_mens_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:store, "must have at least one type of apparel")
    end
  end

  def has_employees
    if employees.where(store_id: self.id).count > 0
      return false
    end
    return true
  end

end
