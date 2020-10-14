class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts
    validates :age, numericality: {only_integer: true, greater_than: 0}
    validates :name, uniqueness: true
    validates :bio, length: {minimum: 30}

    def featured_post
        self.posts.max_by { |posts| posts.likes }
    end

    
end
