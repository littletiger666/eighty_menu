class User < ApplicationRecord
  has_many :orders
  has_many :recipes
end
