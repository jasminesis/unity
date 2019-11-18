class Game < ApplicationRecord
    # has_many :games_user
    has_and_belongs_to_many :users
    validates_uniqueness_of :user_id, scope: :game_id, :message => "Already Fav'd"
end

