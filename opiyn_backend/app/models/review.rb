class Review < ActiveRecord::Base
	self.primary_key = :id
	belongs_to :item, counter_cache: :reviews_count

	# restrict number of reviews to 10
	scope :limited_reviews, lambda {limit(10)}
end
