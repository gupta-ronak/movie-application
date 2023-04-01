class Department < ApplicationRecord


  #validation
  validates :name, presence: true
  #Association
  has_many :movie_crew
end
