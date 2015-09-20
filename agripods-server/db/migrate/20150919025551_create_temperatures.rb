class CreateTemperatures < ActiveRecord::Migration
  def change
    create_table :temperatures do |t|
      t.string :sensorID
      t.decimal :value
      t.timestamp :measuredAt

      t.timestamps null: false
    end
  end
end
