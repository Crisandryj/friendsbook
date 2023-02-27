class Friendship < ApplicationRecord
  belongs_to :requested_friend, class_name: "User"
  belongs_to :friend_request, class_name: "User"

end
