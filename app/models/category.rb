class Category < ApplicationRecord
  validates :name, presence: true

  has_many :category_joins
  has_many :bug_items, through: :category_join
end
