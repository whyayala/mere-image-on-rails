class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :time
      t.string :type

      t.timestamps null: false
    end
  end
end
