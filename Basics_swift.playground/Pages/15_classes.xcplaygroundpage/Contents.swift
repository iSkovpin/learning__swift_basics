// ---------------------------------
// 15. Класс
// ---------------------------------
// класс - описание объекта

class Human {
    // свойства класса
    var age: Int // хранимое свойство
    var name: String
    var rod = "Human" // свойство с дефолтным значением
    var isQualified: Bool
    
    // вычисляемое свойство
    var status: String {
        if isQualified {
            return "\(name) is qualified for this job"
        } else {
            return "\(name) is not qualified for this job"
        }
    }
    
    // инициализатор
    init(age: Int, name: String, isQualified: Bool) {
        self.age = age
        self.name = name
        self.isQualified = isQualified
    }
    
    // метод
    func move() {
        print("\(name) is moving")
    }
}

var maria = Human(age: 30, name: "MARIA", isQualified: true)
maria.age
maria.move()

var igor = Human(age: 20, name: "Igor", isQualified: false)
igor.status


// Геттеры и сеттеры, наблюдатели свойств

class Account {
    // Сумма вклада
    // задание наблюдателей свойств
    var sum: Double {
        // до присваивания
        willSet(newSum) {
            print("Prev sum: \(self.sum) / New: \(newSum)")
        }
        
        // после присваивания
        didSet(oldSum) {
            print("Sum increased by: \(self.sum - oldSum)")
        }
    }

    // процентная ставка (хранимое свойство)
    var rate: Double = 0.01
    
    // Сумма прибыли (вычисляемое свойство)
    // задание геттеров и сеттеров свойства
    var profit: Double {
        get {
            return sum + sum * rate
        }
//        set(newProfit) {
//            self.sum = newProfit / (1 + rate)
//        }
        
        // сокращенная запись (если у нас есть только геттер)
        set {
            self.sum = newValue / (1 + rate)
        }
    }
    
    init (sum: Double, rate: Double) {
        self.sum = sum
        self.rate = rate
    }
}

var myAcc: Account = Account (sum: 1000, rate: 0.1)

// срабатывает сеттер свойства
print(myAcc.profit)

// срабатывает геттер свойства
myAcc.profit = 2000

print(myAcc.sum)

