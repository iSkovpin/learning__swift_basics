// ---------------------------------
// 8. Массивы
// ---------------------------------

// Коллекции
// Массив (Array), Множество (Set), Словарь (Dictionary)

// Массивы могут содержать один тип данных
// Каждый элемент имеет свой индекс
//
// Используем массивы когда
// - важен порядок элементов
// - требуется хранить дубликаты значений
// - не важна производительность при поиске элемента

var array1 = Array<String>()
var array2 = [String]()

let apple = "apple"
let lemon = "lemon"
let orange = "orange"

let fruits = [apple, lemon, orange]

var shoppingList = ["eggs", "milk", "beer"]

// Количество элементов массива
shoppingList.count

// Проверка на пустоту
shoppingList.isEmpty

// Добавление элемента
shoppingList.append("butter")

// Доступ к элементу по индексу
shoppingList[0]
shoppingList[0] = "salt"
shoppingList[0]

// Вставка элемента в произвольное место массива
shoppingList.insert("sugar", at: 0)
shoppingList

// Итерация по массиву
for item in shoppingList {
    print(item)
}

// Итерация с доступом к индексу массива
for (index, value) in shoppingList.enumerated() {
    print("Item \(index): \(value)")
}

// Объединенние массивов
shoppingList += ["pepper"]
shoppingList

let numbers1 = [1, 2, 3, 4]
let numbers2 = [6, 7, 8]
let numbers3 = numbers1 + numbers2
numbers3

