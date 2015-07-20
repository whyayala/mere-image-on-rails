class CreateSpecialistsServices < ActiveRecord::Migration
  def change
    create_table :specialists_services, id: false do |t|
    	t.belongs_to :specialist, index: true
    	t.belongs_to :service, index: true
    end
  end
end
