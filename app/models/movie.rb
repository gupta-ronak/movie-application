class Movie < ApplicationRecord
  #Validation
  validates :title, presence: true, length: { maximum: 30 }

  validates :budget, presence: true, on: :create
  validates :homepage, presence: true, on: :create
  validates :overview, presence: true, length: { minimum: 6 }, on: :create

  validates :popularity, presence: true, on: :create
  validates :release_date, presence: true, on: :create
  validates :revenue, presence: true, if: :movie_released?, on: :create
  validates :runtime, presence: true, on: :create
  validates :status,
            on: :create,
            presence: true,
            inclusion: {
              in: %w[released production announced]
            }
  validates :tagline, length: { minimum: 3 }, on: :create

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
