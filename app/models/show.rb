class Show < ActiveRecord::Base
    def self.highest_rating
        #maximum method
        self.maximum(:rating)
    end

    def self.most_popular_show
        #use highest_rating method as a helper method
        self.find_by(rating: self.highest_rating)
    end

    def self.lowest_rating
        #minimum method
        self.minimum(:rating)
    end

    def self.least_popular_show
        #use lowest_rating method as a helper method
        self.find_by(rating: self.lowest_rating)
    end

    def self.ratings_sum
        #returns sum of all ratings
        self.sum(:rating)
    end

    def self.popular_shows
        #returns an array of all shows with a rating greater than 5 use where method
        self.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        #returns an array sort alphabetical by name use order method
        self.order(:name)
    end
end