class Schedule < ApplicationRecord
    has_and_belongs_to_many :users
    belongs_to :user
    has_many :schedules_user
    validates :event, presence: true, length: { minimum: 1, maximum: 80 }
    validates_uniqueness_of :start_time, scope: :user_id, :message => "Already booked"
   
end

