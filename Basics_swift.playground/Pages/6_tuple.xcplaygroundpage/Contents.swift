// ------------------------------------
// 6. Составной тип данных tuple
// ------------------------------------

// Может содрежать различные типы данных в себе
// Используется для временного хранения данных

var person = (name: "Ivan", age: 33, isMarried: true, weight: 63.5)

// Способы задания tuple
let a = 1
let b = 2

var tuple1 = (a, b)
var tuple2 = (10, "Hello")
var tuple3: (Int, String)
tuple3 = (45, "adsf")
var tuple4 = (name: "Ivan", age: 33, isMarried: true, weight: 63.5)

var (weight, hight) = (76, 555)
print(weight)

// Обращение к элементам по индексу
tuple4.0
tuple4.1
tuple4.2
tuple4.3

// Обращение к элементам по имени
tuple4.name
tuple4.age
tuple4.isMarried

let info = ("Sidorov", 22, 33.6)
var (lastName, age, weight2) = info

lastName
age

// Ненужные элементы можно заменить нижним подчеркиванием
var (_, _, weight3) = info
weight3
