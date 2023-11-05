class WeatherDatum < ApplicationRecord
  belongs_to :location
  belongs_to :user
end
