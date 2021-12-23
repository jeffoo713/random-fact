# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

facts = Fact.create([
  {
    content: "Eating Apple is better during day than night",
    creator: "some korean"
  },
  {
    content: "Sleeping between 10pm - 2am helps recovering your skin",
    creator: "skincare guy"
  },
  {
    content: "lying on left side is more comfy than right side after eating",
    creator: "food fighter"
  },
  {
    content: "Korean chicken is always good",
    creator: "chicken place owner"
  },
  {
    content: "it takes 15min for brain to know how much you are full",
    creator: "another food fighter"
  }
])

comments = Comment.create([
  {
    content: "that makes so much sense now",
    stars: 5,
    creator: "pedestrian 1",
    fact: facts.first,
  },
  {
    content: "I dont think so, but maybe..",
    stars: 2,
    creator: "pedestrian 2",
    fact: facts.first,
  },
  {
    content: "No way... that is why I always eat way too much",
    stars: 4,
    creator: "foodie",
    fact: facts.last,
  },
  {
    content: "I should wait for 15minutes before I eat more then!",
    stars: 3,
    creator: "dieter",
    fact: facts.last,
  },
])