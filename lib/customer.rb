class Customer
    attr_accessor :name, :age, :meals, :waiters
    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
        @meals = []
        @waiters = []
    end

    def self.all
        @@all
    end
    
    def new_meal(waiter, total, tip)
        @waiters << waiter
        new_meal = Meal.new(waiter, self, total, tip)  
        waiter.meals << new_meal
        @meals << new_meal
    end
end