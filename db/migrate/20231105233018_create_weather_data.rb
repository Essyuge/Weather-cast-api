class CreateWeatherData < ActiveRecord::Migration[7.0]
  def change
    create_table :weather_data do |t|
      t.datetime :timestamp
      t.float :temperature
      t.float :humidity
      t.float :precipitation
      t.float :wind_speed
      t.string :weather_condition
      t.float :pressure
      t.references :location, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
