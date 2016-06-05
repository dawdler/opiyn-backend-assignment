require 'spec_helper'

RSpec.describe ItemsController, type: :controller do

  before(:each) do
    require 'securerandom'
    # generate random Item resources
    15.times do |n|
      id = SecureRandom.hex(4) + '-' + SecureRandom.hex(2) + '-' + SecureRandom.hex(2) + '-' + SecureRandom.hex(6)
      title = Faker::Lorem.sentence
      image_url = Faker::Avatar.image
      Item.create!( id: id,
                    title: title,
                    image_url: image_url)
    end

    item_ids = Item.all.ids
    size = item_ids.length
    # generate random Review resources
    100.times do |n|
      index = Random.rand(size-1)
      id = SecureRandom.hex(4) + '-' + SecureRandom.hex(2) + '-' + SecureRandom.hex(2) + '-' + SecureRandom.hex(6)
      content = Faker::Lorem.sentence
      item_id = item_ids[index]
      Review.create!( id: id,
                      content: content,
                      item_id: item_id)
    end
  end

  describe "GET #index" do
    # controller returns only 10 Item resource at a time
    it "returns only 10 items at a time" do
      correct_count = 10
      get :index
      expect(assigns(:items).count).to eq(correct_count)
    end

    it "returns correct count of reviews for each item" do
      exp_reviews_count = Item.order("reviews_count DESC").limit(10).pluck(:reviews_count)
      get :index
      expect(assigns(:items).pluck(:reviews_count)).to eq(exp_reviews_count)
    end
  end

  describe "GET #show" do
    it "returns details of one item" do
      item = Item.second
      id = "{\"#{item.id}\"}"
      get :show, id: id
      expect(assigns(:item)).to eq(item)
      p assigns(:item)
    end
    it "returns correct count of reviews" do
      reviews_count = Item.first.reviews_count
      id = "{\"#{Item.first.id}\"}"
      get :show, id: id
      expect(assigns(:item).reviews_count).to eq(reviews_count)
    end
  end

end

