class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_url, :counters, :created_at
  has_many :reviews

  def reviews
    Review.limited_reviews.reverse
  end
end
