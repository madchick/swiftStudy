// Collections - Array, Dictionary, Set

var todo: [String] = ["장보기", "과제하기", "이메일 답장하기"]
todo.append("식당 예약하기")
todo += ["도서관에서 책 빌리기", "빨래하기"]

let tasks = ["염색하기"]
// tasks.append("핸드폰 고치기")

// Subscript 문법
let firstTodo = todo[0]
todo[4] = "화장실 청소하기"
todo.insert("빨래 널기", at: 2)
todo.remove(at: 2)

let lastItem = todo[todo.count-1]



// Dictionary - key, value

/*
 Airport Code   Airport Name
 INC            Incheon
 GMP            Gimpo
 HKG            Hong Kong International
 SFO            San Francisco International
 LHR            Heathrow
*/

var airportCodes: [String : String] = [
    "INC" : "Incheon",
    "GMP" : "Gimpo",
    "HKG" : "Hong Kong International",
    "SFO" : "San Francisco International",
    "LHR" : "Heathrow"
]

let airportName = airportCodes["INC"]

airportCodes["SYD"] = "Sydney"
airportCodes["GMP"] = "Gimpo International"
airportCodes.updateValue("Gimpo", forKey: "GMP")

airportCodes["SYD"] = nil
airportCodes.removeValue(forKey: "LHR")

let incheonAirport = airportCodes["INC"]
type(of: incheonAirport)
let abcAirport = airportCodes["ABC"]
