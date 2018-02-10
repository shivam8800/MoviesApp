class Review < ApplicationRecord
    validates :description, presence: true
    validates :user_id, presence: true
    validates :movie_id, presence: true

    #one to many relation with user
    belongs_to :user

    #one to many relation with movie
    belongs_to :movie

    #through many relationship between likes users and reviews
    has_many :likes
    has_many :users, through: :likes

    #through many relationship between comment users and reviews
    has_many :comments
    has_many :users, through: :comments
end