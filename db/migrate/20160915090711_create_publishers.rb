class CreatePublishers < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      t.string :publisher_name
      t.text :publisher_add

      t.timestamps null: false
    end
  end
end
