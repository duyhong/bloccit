# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'random_data'
#
#  # Create Posts
#  50.times do
#  # #1
#    Post.create!(
#  # #2
#      title:  RandomData.random_sentence,
#      body:   RandomData.random_paragraph
#    )
#  end
#  posts = Post.all
#
#  # Create Comments
#  # #3
#  100.times do
#    Comment.create!(
#  # #4
#      post: posts.sample,
#      body: RandomData.random_paragraph
#    )
#  end

require 'random_data'

 # Create Questions
 50.times do
 # #1
   Question.create!(
 # #2
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph,
     resolved: RandomData.random_boolean
   )
 end
 questions = Question.all

 puts "Seed finished"
 puts "#{Question.count} questions created"
