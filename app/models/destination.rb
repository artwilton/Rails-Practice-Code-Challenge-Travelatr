class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def all_posts
        
    end

    def featured_post
        self.posts.max_by { |posts| posts.likes }
    end

    def average_age
        self.bloggers.sum { |bloggers| bloggers.age} / Destination.first.bloggers.count
    end
end
