class Post < ApplicationRecord
  belongs_to :user

  #trying to create assoicaton for user_comments
  has_many :comments
  has_many :user_comments, through: :comments, source: :post

  has_many :likes, as: :likeable,  dependent: :destroy
end
