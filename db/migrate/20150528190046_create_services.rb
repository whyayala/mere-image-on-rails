class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.integer :duration
      t.decimal :cost

      t.timestamps null: false
    end
  end
end
