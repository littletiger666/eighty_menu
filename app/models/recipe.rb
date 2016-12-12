class Recipe < ApplicationRecord
  belongs_to :comment
  belongs_to :order
end
