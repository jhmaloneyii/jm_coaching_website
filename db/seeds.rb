# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.create(title: 'Test 1', content: 'This is a sample blog post content.')
Post.create(title: 'Test 2', content: 'this is also a sample blog post content.')

BlogTag.create(tag_name: "cool stuff")
BlogTag.create(tag_name: "lame stuff")

Admin.create(email: 'jmcoachingllc@gmail.com', password: 'asdfasdf', password_confirmation: 'asdfasdf')
