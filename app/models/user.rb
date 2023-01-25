class User < ActiveRecord::Base
  # which posts did I author?
  has_many :posts, foreign_key: 'author_id'

  has_many :comments
  has_many :commented_posts, through: :comments, source: :post

  has_many :favorites
  has_many :favorited_posts, through: :favorites, source: :post

end

