class UserPic < ApplicationRecord
  belongs_to :user
  belongs_to :pic
end
