# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Like.destroy_all
Comment.destroy_all
PrivateMessage.destroy_all
Tag.destroy_all
Gossip.destroy_all
User.destroy_all
GossipTag.destroy_all
City.destroy_all


20.times do

  city = City.create!(name: Faker::TvShows::RickAndMorty.location, zip_code: rand(10000..80000))
  
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Measurement.height, email: Faker::Internet.email, age: rand(1..100), city: City.all.sample, password: "FEdv7j;L")
  
  gossip = Gossip.create!(title: Faker::Music::RockBand.name, content: Faker::TvShows::RickAndMorty.quote, user: User.all.sample)
  
  tag = Tag.create!(title: Faker::Lorem.word, user: User.all.sample)
  
  comment = Comment.create!(content: Faker::Lorem.paragraph, user: User.all.sample, gossip: Gossip.all.sample)

  gossip_tag = GossipTag.create!(gossip: Gossip.all.sample, tag: Tag.all.sample)
  
  like = Like.create!(user: User.all.sample, gossip: Gossip.all.sample, comment: Comment.all.sample)

end
