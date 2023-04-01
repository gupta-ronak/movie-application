class Genre < ApplicationRecord
  #validation
  validates :name, presence: true
  #Association
  has_and_belongs_to_many :movie
end
