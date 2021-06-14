// ---------------------------------
// 16. Структуры
// ---------------------------------

class Human {
    var age: Int
    var name: String
    
    init(age: Int, name: String) {
        self.age = age
        self.name = name
    }
}

let human = Human(age: 20, name: "Igor")

// свойство можно изменить, даже если переменная с объектом является константой (let)
human.age = 22
human.age


// У структуры "встроенный" инициализатор
struct Human1 {
    var age: Int
    var name: String
}

let human1 = Human1(age: 25, name: "Maria")
//human1.age = 35 // если экземпляр задан через let - невозможно изменить свойство структуры

var human11 = Human1(age: 255, name: "Bob")
human11.age = 33 // в случае с var - будет работать
human11.age

// Типы данных
// value type (тип значение) - Int, String, Bool, struct
// reference type (тип ссылка) - enumm, class

var human2 = Human1(age: 30, name: "Olga")

human2.age
human2.name

human2 = human1 // копирование данных

human2.age
human2.name

human2.age = 45
human2.name = "Veronika"

human2.age
human2.name

human1.age
human1.name

var human3 = Human(age: 50, name: "Stas")
human3.age
human3.name

human3 = human // присвоение ссылки на human

human3.age
human3.name

human3.age = 60
human3.name = "Vitalii"

// Сейчас human и human3 один и тот же объект
human3.age
human3.name

human.age
human.name


// Про методы

struct Person {
    var name: String
    
    // Если мы хотим изменять свойства сруктуры внутри функции, нужно добалввять ключевое
    // слово mutating
    mutating func makeAnonimus() {
        name = "Anonymus"
    }
}

class Person1 {
    var name: String
    
    // в классе спокойно можем менять свойства
    func makeAnonimus() {
        name = "Anonymus"
    }
    
    init(name: String) {
        self.name = name
    }
}

// Строка - это тоже структура, как и другие типы-значения (value types)
let str = "Some string"

print(str.count)
print(str.hasPrefix("S"))
print(str.uppercased())
print(str.sorted())
