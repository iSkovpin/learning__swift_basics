// ---------------------------------
// 12. Closures (замыкания)
// ---------------------------------

// Клоужеры - анонимные функции
// Можно записать в переменную, передать в функцию

/*
 Синтаксис:
 
 { (параметры) -> тип результата in
    тело клоужера
 }
 */

let driving = {
    print("I'm driving")
}

driving()


let driving2 = {
    (place: String) in
    print("I'm driving to \(place)")
}

driving2("London")

// Различие в определении и вызове функций и замыканий

func payFunc(user: String, amount: Int) {
    print("\(amount) to \(user)")
}

let payClosure = {
    (user: String, amount: Int) in
    print("\(amount) to \(user)")
}

payFunc(user: "Petya", amount: 22)
payClosure("Vasiya", 23)

// Можно так же возвращать значение

let drivingWithReturn = {(place: String) -> String in
    return "I'm driving to \(place)"
}

let message = drivingWithReturn("Home")
print(message)


let payment2 = {(user: String) in
    print("Pay to \(user)")
}

let payment3 = {(user: String) -> Bool in
    print("Pay to \(user)")
    return true
}

let payment4 = {() -> Bool in
    print("Pay to ...")
    return true
}

payment4()


// Передача замыкания в качестве аргумента функции
let driving3 = {
    print("I'm driving")
}

func travel(action: () -> Void) {
    print("I'm ready to go")
    action()
    print("I have arrived")
}

travel(action: driving3)

// trailing closure syntax
// Может использоваться, когда последний параметр - замыкание
travel() {
    print("I'm driving with trailing closure syntax")
}

func animate (duration: Double, animations: () -> Void) {
    print("Starting animation \(duration) secs")
    animations()
}

animate(duration: 3, animations: {
    print("Lalala")
})

animate(duration: 3) {
    print("Lalala")
}


func travel2(action: (String) -> Void) {
    print("I'm ready to go")
    action("London")
    print("I have arrived")
}

travel2 {(place: String) in
    print("Go to \(place)")
}

let changeSpeed = {(speed: Int) in
    print("Changing speed to \(speed) kph")
}

func buildCar(name: String, engine: (Int) -> Void) {
    // buld the car
}

func travel3(action: (String) -> String) {
    print("I'm ready to go")
    let desciption = action("London")
    print(desciption)
    print("I have arrived")
}


// Возможные сокращенные записи для замыканий
travel3 {(city: String) -> String in
    return "Go to city \(city)"
}

travel3 {city in
    return "Go to city \(city)"
}

travel3 {
    return "Go to city \($0)"
}

// 2 параметра в замыкании
func travel4(action: (String, Int) -> String) {
    print("I'm ready to go")
    let desciption = action("London", 60)
    print(desciption)
    print("I have arrived")
}

travel4 {
    return "I'm going to \($0) at \($1) mph"
}

// Функция ожет возвращать замыкание
func travel5() -> (String) -> Void {
    // Захват значения counter внутрь тела замыкания
    var counter = 1
    return {
        print("\(counter). Go to city \($0)")
        counter += 1
    }
}

let result = travel5()
result("Moscow")
result("Moscow")
result("Moscow")

// Здесь уже будет другой счетчик
let result2 = travel5()
result2("Moscowwww")
result2("Moscowwww")
result2("Moscowwww")
