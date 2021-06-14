// ---------------------------------
// 10. Словари
// ---------------------------------

// Коллекции
// Массив (Array), Множество (Set), Словарь (Dictionary)

// Словарь - контейнер, который хранит элементы одного типа, каждому из которых соответсвует определённый ключ
// Поиск по словарю - очень быстрый
//
// Инициализация словаря
// Dictionary<KeyType, ValueType>
// [Key: Value] - краткая форма

var dictionary = [Int: String]()
dictionary

var heights = ["Ian": 1.66, "Maria": 1.76, "Igor": 2.10, "Olga": 1.55]

// Доступ к значению элемента по ключу
heights["Igor"]

var results = ["Math": 100, "English": 55, "Geo": 86]
results.count
results.isEmpty

results["History"] = 53
results

results["Math"] = 90
results

// Обновление значения, только если ключ существует
results.updateValue(70, forKey: "History")
results

results.updateValue(70, forKey: "Geometry") // Ничего не произойдет
results

// Удаление элемента с ключом
results.removeValue(forKey: "Math")
results

// Итерация по словарю
for (subject, point) in results {
    print("\(subject): \(point)")
}

for subject in results.keys {
    print("Subject: " + subject)
}

for point in results.values {
    print("Result: \(point)")
}

// Вытаскивание ключей и значений в массивы
var keys = Array(results.keys)
var values = Array(results.values)
keys
values
