class CreateHumidityReadings < ActiveRecord::Migration
  def change
    create_table :humidity_readings do |t|
      t.string :sensorID
      t.decimal :value
      t.timestamp :measuredAt

      t.timestamps null: false
    end
  end
end
