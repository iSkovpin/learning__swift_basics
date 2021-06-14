protocol Greatness {
    func isGreaterThan(other: Self) -> Bool
}

// Расширение будет применяться только к массивам
// элементы которого реализуют протокол Greatness
extension Array where Element: Greatness {
    var greatest: Element {
        // Реализация
        // Мы знаем, что каждый элемент реализует Greatness
        // Поэтому можем вызывать у них метод isGreaterThan
    }
}
