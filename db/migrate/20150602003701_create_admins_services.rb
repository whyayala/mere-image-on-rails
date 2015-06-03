class CreateAdminsServices < ActiveRecord::Migration
  def change
    create_table :admins_services, id: false do |t|
    	t.belongs_to :admin, index: true
    	t.belongs_to :service, index: true
    end
  end
end
