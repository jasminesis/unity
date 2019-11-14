class Schedule < ApplicationRecord
    has_and_belongs_to_many :users
    belongs_to :user
    validates :event, presence: true, length: { minimum: 1, maximum: 80 }
end
