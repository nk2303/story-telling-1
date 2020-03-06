class Story < ApplicationRecord
    has_many :sentences
    has_many :tellers, through: :sentences
end
