class CreateWeatherForecasts < ActiveRecord::Migration[7.0]
  def change
    create_table :weather_forecasts do |t|
      t.datetime :timestamp
      t.float :min_temperature
      t.float :max_temperature
      t.float :precipitation_chance
      t.string :forecast_condition
      t.references :location, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
