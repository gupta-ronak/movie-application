class CreateJoinTableMovieGenre < ActiveRecord::Migration[7.0]
  def change
    create_join_table :movies, :genres do |t|
      t.index :genre_id
      t.index :movie_id
    end
  end
end
