class Genre < ApplicationRecord
  #Association
  has_and_belongs_to_many :movie
end
