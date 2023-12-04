class Course < ApplicationRecord
  belongs_to :user
  validates :title, :summarize, :category, :date, presence: true
end
