class MovieCrew < ApplicationRecord
  #Association
  belongs_to :person
  belongs_to :movie
  belongs_to :department
end
