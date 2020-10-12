class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  # validates annual_revenue, length: {minimum: 0}
  validates :annual_revenue, numericality: { only_integer: true }
  validates :annual_revenue, numericality: { greater_than: 0 }
end
