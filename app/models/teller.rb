class Teller < ApplicationRecord
    has_secure_password
    has_many :sentences
    has_many :stories, through: :sentences
    validates :username, presence: true
    validates :username, uniqueness: true
end
