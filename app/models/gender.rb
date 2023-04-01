class Gender < ApplicationRecord

  #Validation
  enum :gender, %i[male female other]

  #Association
  has_many :movie_cast
end
