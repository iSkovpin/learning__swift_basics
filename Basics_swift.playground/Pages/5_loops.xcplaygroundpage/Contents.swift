// ------------------------------------
// 5. Циклы
// ------------------------------------
let count = 1...10


// i внутренняя константа цикла
for i in count {
    print("number \(i)")
}

// Если константа не нужна в теле цикла, заменяем её на _
for _ in 1...5 {
    print("Hello")
}

// While
var num = 1
while num <= 20 {
    print(num)
    num += 1
}

// Repeat
// Минимум 1 итерация всегда будет выполнена
repeat {
    print(num)
    num += 1
} while num <= 20

// Использование break для прерывания цикла
var countDown = 10
while countDown >= 0 {
    print(countDown)

    if (countDown == 4) {
        break
    }

    countDown -= 1
}
