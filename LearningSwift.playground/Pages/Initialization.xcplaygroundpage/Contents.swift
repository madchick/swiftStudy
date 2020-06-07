class Fahrenheit {
    var temperature: Double
    
    init() {
        temperature = 32.0
    }
}

let f = Fahrenheit()
f.temperature

class Celsius {
    var temperature: Double
    
    init(fromFahrenheit fahrenheit: Double) {
        temperature = (fahrenheit - 32.0) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        temperature = kelvin - 273.15
    }
    
    init(_ celsius: Double) {
        temperature = celsius
    }
}

let boilingTempOfWater = Celsius(fromFahrenheit: 212.0)
boilingTempOfWater.temperature

let celsius = Celsius(50)
celsius.temperature
