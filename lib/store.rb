class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}, presence: true
  validates :annual_revenue, presence: true, :inclusion => 0..Float::INFINITY, numericality: { only_integer: true }
end
