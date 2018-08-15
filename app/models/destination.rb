class Destination < ApplicationRecord
  has_many :posts
  has_many :bloggers, through: :posts

  def featured_post
    self.posts.order(likes: :desc)[0]
  end

  def most_recent_5
    self.posts.reverse[0..4]
  end

  def average_age
    unique_bloggers = self.bloggers.distinct

    total = unique_bloggers.inject(0) do |sum, blogger|
      sum + blogger.age
    end

    total/unique_bloggers.length
  end

end
