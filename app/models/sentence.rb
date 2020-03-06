class Sentence < ApplicationRecord
    belongs_to :story
    belongs_to :teller
end
