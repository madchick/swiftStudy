func caluateArea(width: Int, height: Int) {
    let area = width * height
    print(area)
}

caluateArea(width: 10, height: 10)
caluateArea(width: 20, height: 20)



func convertToCelsius(temperatureInFahrenheit temp: Double = 10) -> Double {
    let temperatureInCelsius = (temp - 32) * (5/9)
    return temperatureInCelsius
}

convertToCelsius(temperatureInFahrenheit: 80)
convertToCelsius()



func sayHello(to person: String, and anotherPerson: String = "Kim") -> String {
    return "Hello \(person) and \(anotherPerson)"
}

sayHello(to: "Jack", and: "Jill")



func calculateWallpaperPrice(width: Int, height: Int, color: String = "beige") -> (price:Int,color:String) {
    var price: Int
    
    let area = 10
    
    switch color {
    case "beige": price = area * 10000
    case "gray": price = area * 15000
    case "pink": price = area * 20000
    default: price = 0
    }
    
    return(price,color)
}

let result = calculateWallpaperPrice(width: 17, height: 10)
result.price
result.color



