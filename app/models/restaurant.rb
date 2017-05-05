class Restaurant < ApplicationRecord
  CATEGORIES = %w(chinese viet italian spanish french)

  validates :stars, inclusion: { in: [1,2,3,4], allow_nil: false }
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
