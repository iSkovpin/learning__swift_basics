// ---------------------------------
// 18. Наследование
// ---------------------------------

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    var info: String {
        return "The breed of \(name) is \(breed)"
    }
    
    func makeNoise() -> String {
        return "Hello"
    }
}

class Corgi: Dog {
    
    // собственное непереопределённое свойство класса
    var isHappy: Bool
    
    init(isHappy: Bool) {
        self.isHappy = isHappy
        super.init(name: "Alisa", breed: "Corgi") // вызов родительского инициализатора
    }
    
    // переопределение вычисляемого свойства
    override var info: String {
        return name + " " + breed
    }
    
    // переопределение метода
    override func makeNoise() -> String {
        return super.makeNoise() + ", sir"
    }
}

var corgi = Corgi(isHappy: true)

//corgi.name = "Alisa"
//corgi.breed = "Corgi"

corgi.name
corgi.breed
corgi.isHappy

corgi.info
corgi.makeNoise()
