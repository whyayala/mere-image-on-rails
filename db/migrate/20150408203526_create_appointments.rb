class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :specialist, index: true
      t.datetime :appointment_time
      t.string :appointment_type
      t.timestamps null: false
    end
  end
end
