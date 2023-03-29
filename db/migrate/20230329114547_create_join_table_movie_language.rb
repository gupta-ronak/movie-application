class CreateJoinTableMovieLanguage < ActiveRecord::Migration[7.0]
  def change
    create_join_table :movies, :languages do |t|
      t.index :language_id
      t.index :movie_id
      t.index :language_role_id
    end
  end
end
