// ------------------------------------
// 7. Опциональные типы данных
// ------------------------------------

// nil
// Данные могут быть, а могут не быть, тогда значение будет nil, т.е. отсутстве значение

var age2: Int? = 12
//age2 = nil

//age2 + 1 - не будет работать

if age2 == nil {
    print("age is nil")
} else {
    // force unwrapping - age2 точно не nil (! после имени переменной)
    // age2 теперь выступает как Int, вместо Int?
    age2! + 1
}

// Optional binding
if let safeAge = age2 {
    // safeAge точно не равна nil, но используется только внутри области видимости if
    safeAge
} else {
    print("age2 is nil")
}

let year = "1980"
if let safeYear = Int(year) {
    // safeYear точно будет верно приведена к Int
    safeYear
}

// nil coalescing operator (оператор объединения nil)
var example: String? = "Hello"
print(example ?? "example is nil")


// Неявно извлеченные типы
// После инициализации значение переменной будет nil, затем обычный Int
// Используется как правило для классов и структур
var number1: Int! = nil
number1 = 10
number1 + 1
