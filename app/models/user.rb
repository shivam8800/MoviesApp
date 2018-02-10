class User < ApplicationRecord
    validates :movie_id, presence: true
     #this is for mail should be lowercase
     before_save {self.email = email.downcase}
     #username should be present 
     validates :name, presence: true, length: {maximum:30}
     #validate email address
     VALID_EMAIL_REGEX =/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
     validates :email, presence: true, length: {maximum: 255},
                         format: { with: VALID_EMAIL_REGEX},
                         uniqueness: { case_sensitive: false}

    #one to many relation with movie and users
    belongs_to :movie

    #one to many relation with reviews
    has_many :reviews
    has_many :movies, through: :reviews

    #through many relationship between likes users and reviews
    has_many :likes
    has_many :reviews, through: :likes
    
    #through many relationship between comment users and reviews
    has_many :comments
    has_many :reviews, through: :comments
end