class Freetime < ApplicationRecord
    belongs_to :user
    validates_uniqueness_of :time, scope: :user_id
end
