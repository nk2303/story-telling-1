class CategoryStory < ApplicationRecord
    belongs_to :stories
    belongs_to :category
end
