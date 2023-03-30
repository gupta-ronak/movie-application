class MovieLanguage < ApplicationRecord
  belongs_to :language
  belongs_to :language_role
  belongs_to :movie
end
