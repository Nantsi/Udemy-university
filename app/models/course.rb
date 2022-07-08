class Course < ApplicationRecord
  validates :name, presence: true, length: {in: 5..50}
  validates :short, presence: true, length: {in: 1..8}
  validates :description, presence: true, length: {in: 10..350}
end