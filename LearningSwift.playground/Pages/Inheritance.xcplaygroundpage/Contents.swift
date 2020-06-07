// Subclass <- Superclass
// Overriding : subclass가 superclass의 행동을 변형하는 것
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "Traveling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise() {
        
    }
}

let someVehicle = Vehicle()
print(someVehicle.description)

class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.currentSpeed
bicycle.description
bicycle.hasBasket

class Tandem: Bicycle {
    var numberOfPassengers = 0
}

let tandem = Tandem()
tandem.currentSpeed
tandem.description
tandem.makeNoise()
tandem.numberOfPassengers

class Train: Vehicle {
    override func makeNoise() {
        print("choo choo")
    }
}

let train = Train()
train.makeNoise()

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print(car.description)




