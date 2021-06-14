// ---------------------------------
// 14. Перечисления (enumerations, enum)
// ---------------------------------
// enum - группа значений

// "Проблема":
let result = "failure"
let result2 = "failed"
let result3 = "fail"

// Синтаксис enum
enum Result {
//    case success, failure
    case success
    case failure
}

var result4 = Result.failure
result4 = .success

let result5: Result
result5 = .success

// Значение каждого кейса может содержать контекстные данные (в скобках)
enum Activity {
    case dancing
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let currentActivity = Activity.dancing

// Если мы использовали все кейсы enum в свиче, то блок default - не обязателен
switch currentActivity {
case .dancing: print("Dance")
case .running: print("Run")
case .talking: print("Talk")
case .singing: print("Sing")
}

let talking = Activity.talking(topic: "footbal")

// Можно сделать raw value для всех кейсов перечисления
// По-умолчанию - нумерация с 0, но можно указать и обственное значеие
enum Planet: Int {
    case mercury = 1
    case venus = 3
    case earth
    case mars
}

let earth = Planet(rawValue: 5)

// Raw value может быть строкой
enum Phone: String {
    case Apple = "iPhone 8"
    case Samsung = "Galaxy S10"
    case Google
}

var myPhone = Phone.Apple
print(myPhone)
print(myPhone.rawValue) // выведет заданное raw value

var myPhone2 = Phone.Google
print(myPhone2)
print(myPhone2.rawValue) // выведет название кейса
