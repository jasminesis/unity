class Friend < ApplicationRecord
  belongs_to :user
  has_many :game
  validates_uniqueness_of :user_id, scope: :friend_user_id, :message => "Already friends"
end
