# Blog-App
A Blog Application built using Ruby on Rails

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...





Blog App


User
 - username
 - email
 - password
 - has_many :posts
 - has_many :comments
 - has_many :categories through: :posts
 - has_many :commented_posts, through: :comments


Post   * join table joining categories and users
 - title
 - content
 - has_many :comments
 - belongs_to :user
 - belongs_to :category
 - has_many :users, through: :comments 



Comment * join table joining users and posts
 - content
 - belongs_to :user
 - belongs_to :post


categories
 - name
 - has_many :posts
 - has_many :users, through: :posts



'/users'

'/users/:id/posts'
'/users/:id/comments'


'/posts'

'/posts/:id/comments'
