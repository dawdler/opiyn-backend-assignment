# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

15.times do |n|
  item_id = SecureRandom.hex(4) + '-' + SecureRandom.hex(2) + '-' + SecureRandom.hex(2) + '-' + SecureRandom.hex(6)
  item_title = Faker::Lorem.sentence
  image_url = Faker::Avatar.image
  Item.create!( id: item_id,
                title: item_title,
                image_url: image_url)
end

item_ids = Item.all.ids
item_size = item_ids.length

150.times do |n|
  index = Random.rand(item_size-1)
  review_id = SecureRandom.hex(4) + '-' + SecureRandom.hex(2) + '-' + SecureRandom.hex(2) + '-' + SecureRandom.hex(6)
  review_content = Faker::Lorem.sentence
  item_id = item_ids[index]
  Review.create!( id: review_id,
                  content: review_content,
                  item_id: item_id)
end