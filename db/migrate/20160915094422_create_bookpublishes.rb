class CreateBookpublishes < ActiveRecord::Migration
  def change
    create_table :bookpublishes do |t|
      t.integer :book_id
      t.integer :publisher_id

      t.timestamps null: false
    end
  end
end
