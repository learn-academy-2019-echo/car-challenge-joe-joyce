# Story: As a programmer, I can make a vehicle. Hint: Create a class called Vehicle, and create a variable called my_vehicle which contains an object of class Vehicle.

# class Vehicle
#     def initialize()
#         @ = 
#     end
# end
# my_vehicle = Vehicle.new

# Story: As a programmer, I can make a car. Hint: Create a class called Car, and create a variable called my_car which contains an object of class Car.


# Story: As a programmer, I can tell how many wheels a car has; default is four. Hint: initialize the car to have four wheels, then create a method to return the number of wheels.

class Car
    def initialize(model_year)
        @wheels = 4
        @model_year = model_year
        @light_status = "off"
        @turn_signal_status = "off"
        @speed = 0
    end 
    
    def get_number_wheels
        @wheels
    end
    
    def model_year
        @model_year
    end
    
    def make
        @make
    end
    
    def light_switch
        if @light_status == "off"
            @light_status = "on"
        else @light_status = "off"
        end
        @light_status
    end
    
    def turn_signal_switch
        if @turn_signal_status == "off"
            @turn_signal_status = "on"
        else @turn_signal_status = "off"
        end
        @turn_signal_status
    end
    
    def print_information
        "my vehicle has #{@wheels} wheels"
    end
end

my_car = Car.new(2013)
# p my_car.get_number_wheels

# Story: As a programmer, I can make a Tesla car. Hint: Create an variable called my_tesla which is of class Tesla which inherits from class Car.
class Tesla < Car
    def initialize(model_year)
        super(model_year)
        @make = "Tesla"
    end 
    
    def acceleration
        @speed += 10
    end
    
    def brake
        @speed -= 7
    end
    
    def print_information
        super().to_s
    end
end 
# my_tesla1 = Tesla.new(2019)
# my_tesla2 = Tesla.new(2010)


# Story: As a programmer, I can make a Honda car.

class Honda < Car
    def initialize(model_year)
        super(model_year)
        @make = "Honda"
    end
    
    def acceleration
        @speed += 2
    end
    
    def brake
        @speed -= 1.25
    end
    
end
my_honda = Honda.new(2007)
# p my_honda

# Story: As a programmer, I can make a Toyota car.

class Toyota < Car
    def initialize(model_year)
        super(model_year)
        @make = "Toyota"
    end
    
    def acceleration
        @speed += 7
    end
    
    def brake
        @speed -= 5
    end
end
my_toyota = Toyota.new(2011)
# p my_toyota.speed
# p my_toyota

collection = [Tesla.new(2010), Toyota.new(2011), Honda.new(1990),Tesla.new(2019), Honda.new(2017), Toyota.new(2001)]
p collection

sorted_collection_year = collection.map { |car| car.model_year}.sort
p collection.map { |car| car.model_year}
sorted_collection_name = collection.map { |car| car.make }.sort

sorted_collection_name_year = collection.map { |car, year| car.make }.sort

# p sorted_collection_year
# p sorted_collection_name
p collection.sort()



# Story: As a programmer, I can tell which model year a vehicle is from. Model years never change. Hint: Make model year part of the initialization.

# Story: As a programmer, I can turn on and off the lights on a given Vehicle. Hint: Create method(s) to allow programmer to turn lights on and off. Which class are the methods in?

# Story: As a programmer, I can determine if the lights are on or off. Lights start in the off position.

# Story: As a programmer, I can signal left and right. Turn signals starts off.

# Story: As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.

# Story: As a programmer, I can speed my Teslas up by 10 per acceleration.

# Story: As a programmer, I can slow my Teslas down by 7 per braking.

# Story: As a programmer, I can speed my Hondas up by 2 per acceleration.

# Story: As a programmer, I can slow my Hondas down by 1.25 per braking.

# Story: As a programmer, I can speed my Toyotas up by 7 per acceleration.

# Story: As a programmer, I can slow my Toyotas down by 5 per braking.

# Story: As a programmer, I can call upon a car to tell me all it's information. Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.

# Story: As a programmer, I can keep a collection of two of each kind of vehicle, all from different years. Hint: Create two of each vehicles, all from different model years, and put them into an Array.

# Story: As a programmer, I can sort my collection of cars based on model year.

# Story: As a programmer, I can sort my collection of cars based on model. Hint: Sort based on class name.

# Story: As a programmer, I can sort my collection of cars based on model and then year. Hint: Find out how the spaceship operator can help you with an array.
