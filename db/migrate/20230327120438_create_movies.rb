class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :budget
      t.text :overview
      t.string :homepage
      t.integer :popularity
      t.datetime :release_date
      t.integer :revenue
      t.string :status
      t.string :tagline
      t.float :votes_avg
      t.bigint :votes_count
      t.timestamps
    end
  end
end
