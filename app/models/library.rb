class Library < ApplicationRecord
  has_many :messages, dependent: :destroy
end
