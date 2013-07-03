# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


purple = Post.create([{title: 'wut wut'}, {body: "Here's a fresh body"}])

pink = Post.create([{title: "It's pink!"}, {body: "Here's a fresh body in pink"}])

Post.create([{title: "no variable here!"}, {body: "Yet I'm still a seed"}])