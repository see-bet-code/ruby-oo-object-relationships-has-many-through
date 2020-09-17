require 'pry'

class Waiter
    attr_accessor :name, :yrs_experience, :meals
    @@all = []

    def initialize(name, yrs_experience)
        @name = name
        @yrs_experience = yrs_experience
        @@all << self
        @meals = []
    end

    def self.all
        @@all
    end

    def new_meal(customer, total, tip)
        customer.new_meal(self, total, tip)
    end

    def best_tipper
        @meals.max_by { |meal| meal.tip }.customer
    end
end