class Person < ApplicationRecord
  #Association
  has_many :movie_crew
  has_many :movie_cast
end
