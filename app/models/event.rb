class Event < ApplicationRecord
  belongs_to :user
  has_many :user_events, dependent: :destroy
  has_many :users, through: :user_events, source: :events
end
