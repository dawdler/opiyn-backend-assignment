class Review < ActiveRecord::Base
	self.primary_key = :id
	belongs_to :item
end
