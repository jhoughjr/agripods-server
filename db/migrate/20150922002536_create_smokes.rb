class CreateSmokes < ActiveRecord::Migration
  def change
    create_table :smokes do |t|
      t.string :sensorID
      t.decimal :value
      t.timestamp :measuredAt

      t.timestamps null: false
    end
  end
end
