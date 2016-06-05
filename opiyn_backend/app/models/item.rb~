class Item < ActiveRecord::Base
	self.primary_key = :id
	has_many :reviews, dependent: :destroy

  def counters
    {reviews: self.reviews.count}
  end
end
