class Course < ApplicationRecord
  belongs_to :user
  has_one_attached :document

  validates :title, presence: true
  validates :document, presence: true
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes, source: :courses

end
