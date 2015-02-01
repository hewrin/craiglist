class CreatePost < ActiveRecord::Migration
  def change
      create_table :posts do |t|
        t.string :name
        t.string :input
        t.decimal :price
        t.string :location
        t.string :secretkey
        t.integer :category_id

    end
  end
end
