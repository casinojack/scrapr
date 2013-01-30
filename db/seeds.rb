# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

more_posts = [
  {:title => 'Test Post', :url => 'http://www.reddit.com', :upvotes => '1337', :content => 'self', :date_posted => '11-Aug-1989'},
  {:title => 'Test Post 2', :url => 'http://www.google.com', :upvotes => '123', :content => 'video', :date_posted => '21-Jul-1990'},
  {:title => 'Test Post 3', :url => 'http://www.yahoo.com', :upvotes => '321', :content => 'image', :date_posted => '31-Jul-1991'},
]

Post.send(:attr_accessible, :title, :url, :upvotes, :content, :date_posted)

more_posts.each do |post|
  Post.create!(post)
end
