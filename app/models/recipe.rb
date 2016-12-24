class Recipe < ApplicationRecord
  belongs_to :comment
  belongs_to :order
  belongs_to :user
end
