class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def all_posts
        
    end
end
