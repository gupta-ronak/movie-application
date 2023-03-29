class CreateCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      t.integer :iso_code
      t.string :name

      t.timestamps
    end
  end
end
