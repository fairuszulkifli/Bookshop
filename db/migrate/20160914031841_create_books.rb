class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :author_id
      t.string :published_name
      t.date :published_at


      t.timestamps null: false
    end
  end
end
