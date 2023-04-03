class Person < ApplicationRecord

  #validation
  validates :name, presence: true
  #Association
  has_many :movie_crew
  has_many :movie_cast
end
