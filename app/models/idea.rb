class Idea < ApplicationRecord
  belongs_to :user
  # Validations
  validates :title, presence: true
  validates :description, presence: true
  validates :rating, inclusion: { in: 1..5 }
end
