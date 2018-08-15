class Blogger < ApplicationRecord
  has_many :posts
  has_many :destinations, through: :posts

  validates :name, presence: true
  validates :bio, presence: true
  validates :name, uniqueness: true
  validates :bio, length: {minimum: 30}

  def featured_post
    self.posts.order(likes: :desc)[0]
  end

  def total_likes
    self.posts.inject(self.posts[0].likes) do |sum, post|
        sum + post.likes
    end
  end

  def top_5_destinations
    dests = self.posts.group_by do |post|
      post.destination
    end

    sorted = dests.sort_by do |dest, posts|
      posts.length
    end.reverse

    sorted.map do |dest|
      dest[0]
    end[0..4]
  end

end
