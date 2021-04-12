class User < ApplicationRecord
  has_many :user_pics
  has_many :pics, through: :user_pics
end
