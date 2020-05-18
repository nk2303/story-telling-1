class Category < ApplicationRecord
    has_many :categories_stories
    has_many :stories, through: :categories_stories
end
