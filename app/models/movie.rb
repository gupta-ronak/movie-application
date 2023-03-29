class Movie < ApplicationRecord
  #Validation
  validates :title, presence: true, length: { maximum: 30 }

  validates :budget, presence: true
  validates :homepage, presence: true
  validates :overview, presence: true, length: { minimum: 6 }

  validates :popularity, presence: true
  validates :release_date, presence: true
  validates :revenue, presence: true, if: :movie_released?
  validates :runtime, presence: true

  enum :status, %i[released production announced]

  validates :tagline, length: { minimum: 3 }

  #Callbacks

  before_validation do
    puts "Validation Working"
    self.votes_count = 0 if votes_count.blank?
    self.votes_avg = 0.0 if votes_avg.blank?
    self.revenue = 0 if movie_released?
  end

  #funtions
  def movie_released?
    status == "released"
  end
end
