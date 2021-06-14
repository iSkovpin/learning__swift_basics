// ---------------------------------
// 20. Протоколы
// ---------------------------------

// Протокол - требование к классу или структуре (типа интерфейса)

protocol ICanBuyIt {
    var label: String { get } // должен иметь хотя бы геттер
    var price: Int { get set } // должен иметь и геттер и сеттер
}

class Product {
    var stage: String = "One"

    init(stage: String) {
        self.stage = stage
    }
}

struct Milk: ICanBuyIt {
    var label: String
    var price: Int
}

class Book: Product, ICanBuyIt {
    var label: String
    var price: Int {
        get {
            return priceForOne * amount
        }
        set {
            self.priceForOne = newValue
        }
    }
    var amount: Int
    var priceForOne: Int = 0

    init(label: String, amount: Int, price: Int) {
        self.label = label
        self.amount = amount
        self.priceForOne = price
        super.init(stage: "123")
    }
}

struct Bread: ICanBuyIt {
    var label: String
    var price: Int
    var color: [String]
}

func buy(_ item: ICanBuyIt) {
    print("I'm buying \(item.label). It costs \(item.price)")
}

var milk = Milk(label: "Gnomik v derevne", price: 50)
var book = Book(label: "Agagta Kristi", amount: 3, price: 100)
var bread = Bread(label: "Bulka", price: 22, color: ["red", "blue"])

buy(milk)
buy(book)
buy(bread)
