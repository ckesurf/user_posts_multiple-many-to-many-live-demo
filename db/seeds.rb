User.destroy_all
Post.destroy_all
Comment.destroy_all
# Favorite.destroy_all

3.times do
  User.create(name: Faker::Name.name)
end

10.times do
  Post.create(
    title: Faker::Lorem.sentence(word_count: 3),
    content: Faker::Quote.famous_last_words, 
    author: User.all.sample
  )
end

chris = User.create(name: 'chris')
3.times do
  Post.create(
    title: Faker::Lorem.sentence(word_count: 3),
    content: Faker::Quote.famous_last_words, 
    author: chris
  )
end

# chris comments on posts
3.times do 
  Comment.create(
    description: Faker::Lorem.sentence(word_count: 3),
    user: chris,
    post: Post.all.sample
  )
end

# # chris favorites a couple posts
2.times do  
  Favorite.create(
    user: chris,
    post: Post.all.sample
  )
end
