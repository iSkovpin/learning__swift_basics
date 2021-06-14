// ---------------------------------
// 17. Свойства типов
// ---------------------------------

class Dog {
    var name: String
    var age: Int {
        didSet {
            if age > Dog.maxAge {
                age = oldValue
            }
        }
    }
//    var maxAge = 30
    
    static var maxAge = 30 // статичное свойство класса (относится к классу, а не к экземпляру)
    static var howManyDogs = 0 // свойство типа должно иметь начальное значение
    
    lazy var question = "Can I ask a question?" // ленивое свойство инициализируется в момент обращения к нему
    
    init (name: String, age: Int) {
        self.name = name
        self.age = age
        Dog.howManyDogs += 1
    }
}

struct Cat {
    var name: String
    var age: Int {
        didSet {
            if age > Cat.maxAge {
                age = oldValue
            }
        }
    }
    
//    var maxAge = 30
    
    // Структура так же позволяет задавать статические свойства
    static var maxAge = 30
    static var howManyCats = 0

    // Инициализатор в структуре может быть изменён на собственный
    init (name: String, age: Int) {
        self.name = name
        self.age = age
        Cat.howManyCats += 1
    }
}

Dog.howManyDogs

var dog = Dog(name: "Sobaka", age: 5)
var dog2 = Dog(name: "Juja", age: 200)

dog2.age // наблюдатель свойства в момент инициализации не работает?

Dog.howManyDogs

var dog3 = Dog(name: "Juja2", age: 1)

Dog.howManyDogs


var cat = Cat(name: "Koska", age: 3)

dog.age
dog.age = 35
dog.age

cat.age
cat.age = 35
cat.age

Cat.howManyCats

// Lazy property
dog
dog.question
dog
