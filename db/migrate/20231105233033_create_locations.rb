class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :country
      t.string :city
      t.string :country_code
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
