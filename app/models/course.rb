class Course < ApplicationRecord
  belongs_to :user
  has_one_attached :document
  #  validates :title, :summarize, :category, :date, presence: true
  #  validates :document, presence: true
validates :title, presence: true
end
