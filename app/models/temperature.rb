class Temperature < ActiveRecord::Base
  validates :sensorID, presence: true
  validates :value, presence: true, numericality: true
end
