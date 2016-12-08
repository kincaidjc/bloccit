require 'random_data'

# Create Posts
50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body:  RandomData.random_paragraph
    )
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
    )
end

Post.find_or_create_by(title: "The only non random title", body: "With real words in the body")

Comment.find_or_create_by(body: "This is my comment with real words", post_id: 101)

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created" 