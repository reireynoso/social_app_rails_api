# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Follow.destroy_all
Post.destroy_all
User.destroy_all

Follow.reset_pk_sequence 
Post.reset_pk_sequence
User.reset_pk_sequence

sample = User.create(username: "sample", password: "hello", photo_url_string: "")
example = User.create(username: "example", password: "hello", photo_url_string: "")
example1 = User.create(username: "example1", password: "hello", photo_url_string: "")

post1 = Post.create(title: "Example Post", content: "This is example's first post", photo_url: "", user_id: example.id)

post2 = Post.create(title: "Sample Post", content: "This is sample's first post", photo_url: "", user_id: sample.id)

post3 = Post.create(title: "Example 2 Post", content: "This is example's second post", photo_url: "", user_id: example.id)

# follow = Follow.create(follower_id: sample.id, followee_id: example.id)

puts 'seeded'