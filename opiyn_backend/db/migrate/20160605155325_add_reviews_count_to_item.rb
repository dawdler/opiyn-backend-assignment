class AddReviewsCountToItem < ActiveRecord::Migration
  def change
    add_column :items, :reviews_count, :integer, default: 0
  end
end
