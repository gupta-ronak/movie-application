class Language < ApplicationRecord
  #Validation
  validates :code, length: 2
  validates :name , presence: true

  #Association
  has_many :movie_languages
end
