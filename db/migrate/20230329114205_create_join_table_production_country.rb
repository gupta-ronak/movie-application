class CreateJoinTableProductionCountry < ActiveRecord::Migration[7.0]
  def change
    create_join_table :movies, :countries do |t|
      t.index :country_id
      t.index :movie_id
    end
  end
end
