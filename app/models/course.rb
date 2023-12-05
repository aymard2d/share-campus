class Course < ApplicationRecord
  belongs_to :user
  has_many_attached :documents
 # validates :title, :summarize, :category, :date, presence: true
end
