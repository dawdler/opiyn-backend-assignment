class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews, {:id => false} do |t|
      t.string :id
      t.text :content
      t.string :item_id 	
      t.timestamps null: false
    end
  end
end
