class Comment < ApplicationRecord
    validates :description, presence: true
    validates :user_id, presence: true
    validates :review_id, presence: true

    #through many relationship between comment users and reviews
    belongs_to :review
    belongs_to :user
end