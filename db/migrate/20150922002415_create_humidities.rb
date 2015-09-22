class CreateHumidities < ActiveRecord::Migration
  def change
    create_table :humidities do |t|
      t.string :sensorID
      t.decimal :value
      t.timestamp :measuredAt

      t.timestamps null: false
    end
  end
end
