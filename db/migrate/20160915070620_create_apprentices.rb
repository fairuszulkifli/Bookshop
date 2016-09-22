class CreateApprentices < ActiveRecord::Migration
  def change
    create_table :apprentices do |t|
      
    	t.integer :author_id
      t.string :apprentice_name
     

      t.timestamps null: false
    end
  end
end
