class Review < ApplicationRecord
  belongs_to :course
  validates :rating, presence: true
end
