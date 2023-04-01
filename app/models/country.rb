class Country < ApplicationRecord

  #validation
  validates :iso_code, length: 2
  validates :name , presence: true


  #Association
  has_and_belongs_to_many :movie
end
