class CreateJoinTableMovieKeyword < ActiveRecord::Migration[7.0]
  def change
    create_join_table :movies, :keywords do |t|
      t.index :keyword_id
      t.index :movie_id
    end
  end
end
