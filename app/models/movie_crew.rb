class MovieCrew < ApplicationRecord

  #Validation
  validates :job , presence: true

  #Association
  belongs_to :person
  belongs_to :movie
  belongs_to :department
end
