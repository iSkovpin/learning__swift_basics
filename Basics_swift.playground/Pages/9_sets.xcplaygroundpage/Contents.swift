// ---------------------------------
// 9. Множества
// ---------------------------------

// Коллекции
// Массив (Array), Множество (Set), Словарь (Dictionary)

// Множество - неупорядоченная коллекция элементов
// Используем множества когда
// - не важен порядок элементов
// - не нужно хранить дубликаты значений
// - важна производительность при поиске элемента

var set = Set<String>()

var listOfSports: Set<String> = ["Badminton", "Bowling", "Tennis", "Hockey", "Jogging"]

listOfSports.count
listOfSports.isEmpty

listOfSports.insert("Fising")
listOfSports

listOfSports.remove("Bowling")
listOfSports

listOfSports.contains("Bowling")
listOfSports.contains("Tennis")

for sport in listOfSports {
    print(sport)
}

// Сортировка
// Возвращает массив

print("\n")
for sport in listOfSports.sorted() {
    print(sport)
}

print("\n")
var numbers = [6, 7, 1, 6, 2, 3]
for number in numbers.sorted() {
    print(number)
}

// Дубликаты удаляются из множества
let colors = Set(["red", "green", "blue", "green"])
colors

// Объединение множеств
let oddNumbers: Set = [1, 3, 5, 7, 9]
let evenNumbers: Set = [0, 2, 4, 8, 10]
let primeNumbers: Set = [2, 3, 5, 7]

oddNumbers.union(evenNumbers).sorted()

// Пересечение множеств
// Значения, которые присутствуют в обоих множествах
oddNumbers.intersection(evenNumbers).sorted()

// Вычитание множеств
// Элементы, которые присутствуют в первом множестве, но отсутсвуют во втором
oddNumbers.subtracting(primeNumbers).sorted()

// Разница множеств
// Значения, которые не повторяются в обоих множествах
oddNumbers.symmetricDifference(primeNumbers).sorted()
