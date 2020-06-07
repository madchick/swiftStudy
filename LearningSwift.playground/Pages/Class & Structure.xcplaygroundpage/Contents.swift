// value type
struct SomeStructure {
    var width = 5
    var height = 10
}

// reference type
class SomeClass {
    var resolution = SomeStructure()
    var frameRate = 0.0
    var name = ""
}

var someStructure1 = SomeStructure()
someStructure1.height
someStructure1.width

var someStructure2 = SomeStructure()
someStructure2.height = 30
someStructure2.width = 15

let videoMode = SomeClass()
videoMode.frameRate
videoMode.name
videoMode.resolution.height

let hd = SomeStructure(width:1920,height:1080)
var cinema = hd
cinema.width = 2048
hd.width
cinema.width

let tenEighty = SomeClass()
tenEighty.resolution = hd
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0
let anotherTenEighty = tenEighty
anotherTenEighty.frameRate = 30



// Stored Property
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue:0,length:3)
rangeOfThreeItems.firstValue = 6

let rangeOfFourItems = FixedLengthRange(firstValue:0,length:4)
// rangeOfFourItems.firstValue = 6



// Computed Property
struct Point {
    var x = 0.0
    var y = 0.0
}

struct Size {
    var width = 0.0
    var height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x:centerX,y:centerY)
        }
        set(newCenter)
        {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

var square = Rect(origin: Point(x:0.0,y:0.0), size:Size(width:10,height:10))
let initialCenter = square.center
square.center = Point(x:15.0,y:15.0)
square.origin



// Type Property - 타입에 하나만 존재 - 모든 인스턴스가 공유하는 상수값
class TypePropertyClass {
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty: Int {
        return 27
    }
}

TypePropertyClass.storedTypeProperty
TypePropertyClass.computedTypeProperty



// Property Observer - willSet, didSet
class StempCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set total steps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stempCounter = StempCounter()
stempCounter.totalSteps = 200
stempCounter.totalSteps = 360
stempCounter.totalSteps = 896



class Counter {
    var count = 0
    
    func increment() {
        count += 1
    }
    
    func increment(by amount: Int) {
        count += amount
    }
    
    func reset() {
        count = 0
    }
}

let counter = Counter()
counter.increment()
counter.count
counter.increment(by:5)
counter.count
counter.reset()
counter.count



// Self property
struct Point2 {
    var x = 0.0
    var y = 0.0
    
    func isToTheRightOf(x:Double) -> Bool {
        return self.x > x
    }
}



// Type method
class SomeClass2 {
    static func someTypeMethod() {
        print("some type method")
    }
}

SomeClass2.someTypeMethod()



