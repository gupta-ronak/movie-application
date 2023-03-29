class CreateJoinTableMovieCompany < ActiveRecord::Migration[7.0]
  def change
    create_join_table :movies, :production_companies do |t|
      t.index :production_company_id
      t.index :movie_id
    end
  end
end
