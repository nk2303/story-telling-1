class Sentence < ApplicationRecord
    belongs_to :story
    belongs_to :teller
    validates :sentence_text, presence: true
end
