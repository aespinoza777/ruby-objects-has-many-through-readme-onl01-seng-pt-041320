class Customer
  attr_accessor :name, :age, :waiter
  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
end

def self.all
@@all
end
def new_meal(waiter,total,tip)
  Meal.new(waiter, self, total, tip)
end


def meals
  Meal.all.select {|meal|meal.customer == self}
end

def waiters
  Customer.all.select {|meal| meal.waiter == self}
end

end
