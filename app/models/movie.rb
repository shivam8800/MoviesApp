class Movie < ApplicationRecord
    #username should be present
    validates :name, presence: true, length: {maximum:30}
    #director should be present
    validates :director, presence: true, length: {maximum:30}

    #one to many relationship between movie and users
    has_many :users

    #one to many relation with reviews
    has_many :reviews
    has_many :users, through: :reviews
end