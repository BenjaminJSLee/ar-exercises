class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { 
    only_integer: true,
    greater_than: 40,
    less_than: 200
  }
  validates_associated :store
  before_create :create_password

  private

  def create_password
    password = ""
    chars = [('a'..'z'), ('A'..'Z'), ('0'..'9')].map(&:to_a).flatten
    (0...8).map {
      password += chars[rand(0...chars.length)]
    }
    self.password = password
  end

end
