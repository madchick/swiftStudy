let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
if convertedNumber != nil {
    print("converted number is \(convertedNumber!)")
}



// Optional Biding
if let actualNumber = convertedNumber {
    print("actual number is \(actualNumber)")
} else {
    print("actual number dose not exist")
}

if let firstNumber = Int("4"), let secondNumber = Int("42"),
    firstNumber < secondNumber && secondNumber < 100 {
    print("first number is \(firstNumber), second number is \(secondNumber)")
}



// Optional Chaining
class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 2
}

let john = Person()
// john.residence = Residence()
if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room")
} else {
    print("Unable to retrieve the number of rooms")
}



