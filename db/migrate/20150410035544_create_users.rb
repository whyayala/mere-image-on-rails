class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
	  t.string :first_name, null: false, default: ""
	  t.string :last_name, null: false, default: ""
      t.string :phone, null: false, default: ""
      t.integer :role, default: 0
      t.timestamps null: false
    end
  end
end
