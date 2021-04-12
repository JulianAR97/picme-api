class Pic < ApplicationRecord
  has_many :user_pics
  has_many :users, through: :user_pics
end
