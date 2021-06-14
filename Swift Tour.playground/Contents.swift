import UIKit

let x: Float = 4

let label = "Width "
let width = 44
let wLabel = label + String(width)

let name = "Joe"
let greeting = "Hi, \(name)"

let multiLineText = """
    EHal Greka cherez reku
    Vidit Greka v reke rak
    """

print(multiLineText)

let optName: String? = nil

if let safeName = optName {
    print("Hi, \(safeName)")
} else {
    print("Hi, anonymous")
}

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13, 333],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)

class Shape {
    let name: String
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }

    init(name: String) {
        self.name = name
    }
}

let shape = Shape(name: "Rectangle")
print(shape.name)

shape.numberOfSides = 1

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king

    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.six
let aceRawValue = ace.rawValue

if let convertedRank = Rank(rawValue: 11) {
    let threeDescription = convertedRank.simpleDescription()
}


enum Suit {
    case spades, hearts, diamonds, clubs

    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }

    func color() -> String {
        switch self {
        case .spades, .clubs:
            return "black"
        case .hearts, .diamonds:
            return "red"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
let heartsColor = hearts.color()


enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success = ServerResponse.result("6:00", "18:09")
let failure = ServerResponse.failure("Out of cheese")

switch success {
case let .result(sunrise, sunset):
    print("Sunrise at \(sunrise), sunset at \(sunset)")
case let .failure(error):
    print(error)
}

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}


func getDeck() -> [Card] {
    var deck: [Card] = []
    for suit in [Suit.clubs, Suit.diamonds, Suit.hearts, Suit.spades] {
        for rankRaw in Rank.ace.rawValue...Rank.king.rawValue {
            let rank = Rank.init(rawValue: rankRaw)!
            deck.append(Card(rank: rank, suit: suit))
        }
    }
    
    return deck
}

let deck = getDeck()
deck.count

extension Double {
    var absoluteValue: Self {
        get {
            abs(self)
        }
    }
}

var db = -22.33
db.absoluteValue




enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

enum AnotherError: Error {
    case rrr
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw AnotherError.rrr
    }
    return "Job sent"
}


do {
    let printerResponse = try send(job: 1440, toPrinter: "Never Has Toner")
    print(printerResponse)
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch {
    print(error)
}



