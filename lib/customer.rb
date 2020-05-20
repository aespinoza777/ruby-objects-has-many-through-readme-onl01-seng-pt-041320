class Customer
  attr_accessor :name, :age
  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
end

def self.all
@@all
end
def new_meals()
def meals
  Meal.all.select {|meal|meal.customer == self}
end

def waiters
  customer.all.select {|meal| meal.waiter == self}
end

end
