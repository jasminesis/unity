class Game < ApplicationRecord
    # has_many :games_user
    has_and_belongs_to_many :users
end

