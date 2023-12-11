class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable
  devise :recoverable, :rememberable, :validatable
  has_one_attached :document
  has_one_attached :photo

  has_many :courses, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_courses, through: :likes, source: :courses # Retourne les instances de cours où les cours ont été likés
  has_many :messages, dependent: :destroy
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendship, source: :friend
  has_many :events, dependent: :destroy
  has_many :user_events, dependent: :destroy
  has_many :added_events, through: :user_events, source: :events
end
