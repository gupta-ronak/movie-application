class Keyword < ApplicationRecord

  #Validation
  validates name: , presence: true
  #Association
  has_and_belongs_to_many :movie
end
