class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :posts

  has_many :likes, as: :likeable
end
