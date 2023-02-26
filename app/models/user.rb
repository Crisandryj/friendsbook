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

 has_many :requested_friends


end
