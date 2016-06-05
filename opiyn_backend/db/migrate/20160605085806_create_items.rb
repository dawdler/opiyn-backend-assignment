class CreateItems < ActiveRecord::Migration
  def change
    create_table :items, {:id => false} do |t|
      t.string :id
      t.string :title
      t.string :image_url
      t.timestamps null: false      
    end        	
  end
end
