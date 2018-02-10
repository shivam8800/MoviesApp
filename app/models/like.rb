class Like < ApplicationRecord
    validates :user_id, presence: true
    validates :review_id, presence: true

    #validation of uniqness means in like table all rows are unique which would identify the total number of like
    validates_uniqueness_of :user_id, :scope => [:review_id]

    #through many relationship between likes users and reviews
    belongs_to :review
    belongs_to :user
end