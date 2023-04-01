class Country < ApplicationRecord
  #Association
  has_and_belongs_to_many :movie
end
