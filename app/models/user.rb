class User < ApplicationRecord

  has_many :categories
  has_many :drilldowns
  has_many :questions
end
