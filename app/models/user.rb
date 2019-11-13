class User < ApplicationRecord
  has_and_belongs_to_many :schedules

  has_many :schedule
  has_many :freetime

  has_many :users_game
  has_and_belongs_to_many :games


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
end