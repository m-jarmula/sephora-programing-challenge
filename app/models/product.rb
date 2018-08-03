class Product < ApplicationRecord
  validates :name, presence: true
  validates :category, inclusion: { in: %w(makeup skincare hair) }
end
