class CategoryJoin < ApplicationRecord
  belongs_to :category
  belongs_to :bug_item
end
