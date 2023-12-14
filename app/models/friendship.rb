class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: "User"
  validates :friend, uniqueness: true
  validates :user_id, uniqueness: { scope: :friend_id, message: "Vous êtes déjà ami avec cette personne" }
  validates :friend_id, uniqueness: { scope: :user_id, message: "Vous êtes déjà ami avec cette personne" }
  validates_uniqueness_of :user_id, scope: :friend_id
end
