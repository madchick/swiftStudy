var todo: [String] = ["장보기", "과제하기", "이메일 답장하기"]
todo.append("식당 예약하기")
todo += ["도서관에서 책 빌리기", "빨래하기"]

print(todo[0])

for task in todo {
    print(task)
}

for number in 1...10 {
    print("\(number) X 5 = \(number*5)")
}

var x = 0
while x <= 20 {
    print(x)
    x += 1
}

var index = 0
while index < todo.count {
    print(todo[index])
    index += 1
}

var counter = 1
repeat {
    print("Inside repeat while loop!")
    counter += 1
} while counter < 3



var temperature = 20
if temperature < 12 {
    print("날씨가 춥습니다.")
} else if temperature < 17 {
    print("날씨가 쌀쌀합니다.")
} else {
    print("날씨가 좋네요.")
}



// Logical Operators
3 < 2 && "a" == "a"



let airportCodes = ["INC","GMP","HKG","SFO","LHR","JFK"]
for airportCode in airportCodes
{
    switch airportCode {
        case "INC" :
            print("Incheon Airport")
        case "GMP" :
            print("Gimpo Airport")
        case "HKG" :
            print("Hong Kong International")
        case "SFO","JFK" :
            print("San Francisco International")
        case "LHR" :
            print("Heathrow")
        default :
            print("알 수 없는 공항코드 입니다")
    }
}



import Foundation
var randomTemperature = Int(arc4random_uniform(UInt32(80))) - 30
switch randomTemperature {
case -20..<0 :
    print("")
case 0..<10 :
    print("")
default:
    print("")
}




