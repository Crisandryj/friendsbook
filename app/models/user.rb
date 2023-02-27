class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

# has_many :name
# class_name: "Name"
# foreign_key: :name
# has_many :name, through: :name

 has_many :posts

 has_many :requested_friends, class_name: "Friendship", foreign_key: :requestee_id
 has_many :requestors, through: :requested_friends

 has_many :friend_requests, class_name: "Friendship", foreign_key: :requestor_id
 has_many :requestees, through: :friend_requests


end
