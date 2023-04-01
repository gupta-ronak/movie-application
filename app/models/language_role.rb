class LanguageRole < ApplicationRecord
  #Validation
  validates :language_role, presence: true
  #Association
  has_many :movie_languages
end
