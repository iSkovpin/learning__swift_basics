import Foundation

// ------------ Stanford --------------------
// Enum может иметь ассоциированные данные

enum FastFoodItem {
    case hamburger(numberOfPatties: Int)
    case fries(size: Int)
    case drink(String, ounces: Int)
    case cookie
    
    // Можно добавлять методы
    func isIncludedInSpecialOrder(number: Int) -> Bool {
        switch self {
        case .hamburger(let pattyCount): return pattyCount == number
        case .fries, .cookie: return true
        case .drink(_, let ounces): return ounces == 16
        }
    }
    
    // И вычисляемые свойства
    var calories: Int {
        10
    }
    
    //Но НЕ хранимые свойства!
}

let menuItem: FastFoodItem = FastFoodItem.hamburger(numberOfPatties: 2)
var otherItem: FastFoodItem = .cookie

// Вывод ассоциированной информации

var menuItem2 = FastFoodItem.drink("Coke", ounces: 32)

switch menuItem2 {
case .drink(let brand, let ounces): print("a \(ounces)oz of \(brand)")
case .cookie: print("a cookie!")
default: print("nope")
}

// Получение всех значений Enum
// Наследуем протокол CaseIterable
enum TeslaModel: CaseIterable {
    case X
    case S
    case Three
    case Y
}

// Теперь в статической переменной allCases будут лежать все значения
for model in TeslaModel.allCases {
    print("\(model)")
}

