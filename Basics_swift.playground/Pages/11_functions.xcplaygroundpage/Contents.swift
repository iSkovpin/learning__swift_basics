// ---------------------------------
// 11. Функции
// ---------------------------------

// Функции - кусок кода с именем, по которому можно её вызвать
// Могут принимать и возвращать значения

// Объявление и вызов

func greet() {
    print("Hi")
}

greet()

// Передача параметров

func square(number: Int) {
    print(number * number)
}
square(number: 4)

// Возвращение значения из функции

func square1(number: Int) -> Int {
    return number * number
}

print(square1(number: 5))

// "return" можно опустить, если в функции только одно выражение
func sum1() -> Int {
    5 + 5
}

sum1()

// Возвращение 2х и более значений

func getUser() -> [String] {
    ["Ivanov", "Ivan"]
}
let user = getUser()
//print(user[0])


func getUser1() -> [String: String] {
    ["firstName": "Ivan", "lastName": "Ivanov"]
}
let user1 = getUser1()
//print(user1["firstName"])

func getUser2() -> (firstName: String, secondName: String) {
    (firstName: "ivan", secondName: "Ivanov")
}
let user2 = getUser2()
print(user2.firstName)

// Имена параметров
// Можно задать отдельно внутреннее и внешнее имя

func sayHello(to name: String) {
    print("Hello, \(name)")
}

sayHello(to: "Bubba")

// Пропуск имён параметров

func greet(_ person: String) {
    print("Hi, \(person)")
}
greet("Seniya")


// Параметры по умолчанию

print("Hello, world", terminator: " ")
print("Hello, world", terminator: " ")
print("Hello, world", terminator: " ")

func greet1(_ person: String, nicely: Bool = true) {
    if (nicely == true) {
        print("Hello, \(person)")
    } else {
        print("Oh no, it's \(person) again")
    }
}

greet1("Petya")
greet1("Vasya", nicely: false)


// Вариативные функции и вариативные параметры

print("Hello", "Hello2", "Hello3")

func square2(numbers: Int...) {
    for number in numbers {
        print("\(number): \(number * number)")
    }
}
square2(numbers: 1, 2, 3)

func square3(_ numbers: Int...) {
    for number in numbers {
        print("\(number): \(number * number)")
    }
}
square3(3, 5, 66)

// Сквозные параметры

func doubleIt(number: inout Int) {
    number *= 2
}

var myNumber = 10

doubleIt(number: &myNumber)
print(myNumber)
