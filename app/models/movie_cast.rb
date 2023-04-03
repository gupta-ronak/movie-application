class MovieCast < ApplicationRecord

  #validation
  validates :character_name, presence: true
  validates :cast_order , presence: true


  #Association
  belongs_to :movie
  belongs_to :gender
  belongs_to :person
end
