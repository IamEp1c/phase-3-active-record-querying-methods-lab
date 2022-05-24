class Show < ActiveRecord::Base

    def self.highest_rating()
        Show.maximum(:rating)
    end

    def self.most_popular_show()
        Show.where(rating: self.highest_rating).first
    end

    def self.lowest_rating()
        Show.minimum(:rating)
    end

    def self.rating_sum()
        Show.sum(:rating)
    end
end