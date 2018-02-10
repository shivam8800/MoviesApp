# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


movies = Movie.create!([{name: 'Star Wars', director: "Yash chopra"}, {name: 'Lord of the Rings', director: "Rohit setty"}])

p "Created #{Movie.count} movies"

users = User.create!([{ name: 'Rahul', email: 'rahul@gmail.com', movie: movies.first }, { name: 'Shivam', email: 'shivam@gmail.com',movie: movies.first },{ name: 'Sahil', email: 'sahil@gmail.com', movie: movies.last }, { name: 'Nitin', email: 'nitin@gmail.com', movie: movies.last }])

p "Created #{User.count} users"

reviews  = Review.create!([{description: "awesome movie with lot's of fun",user: users.first, movie: movies.first },{description: "greate movie with full animations",user: users.last, movie: movies.last },{description: "movie is not good becuase of fake scens",user: users.first, movie: movies.last },{description: "yeah i like this movie very much",user: users.last, movie: movies.first }])

p "Created #{Review.count} reviews"


likes = Like.create!([{user: users.first, review: reviews.first},{user: users.last, review: reviews.last}, {user: users.last, review: reviews.first}, {user: users.first, review: reviews.last}])

p "Created #{Like.count} likes"

comments = Comment.create!([{description: "cool you are right",user: users.first, review: reviews.first},{description: "I am with you",user: users.last, review: reviews.last}, {description: "I am little bit agree with you",user: users.last, review: reviews.first}, {description: "you are not good",user: users.first, review: reviews.last}])

p "Created #{Comment.count} comments"