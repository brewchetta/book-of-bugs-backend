class BugItem < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :priority, presence: true

  has_many :category_joins
  has_many :categories, through: :category_join
end
