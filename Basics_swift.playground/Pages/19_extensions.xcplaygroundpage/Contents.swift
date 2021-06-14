// ---------------------------------
// 19. Расширения
// ---------------------------------

// расширение встроенного типа (= структуры)
extension Int {
    func squared() -> Int {
        return self * self
    }
    
    func repetition(task: () -> Void) -> Void {
        for _ in 0..<self {
            task()
        }
    }
    
    var isEven: Bool {
        return self % 2 == 0
    }
}

var number = 10

number.squared()
number.isEven

number.repetition {
    print("Hello")
}

extension Double {
    var m: Double {
        return self
    }
    var km: Double {
        return self / 1000
    }
    var sm: Double {
        return self * 100
    }
    var mm: Double {
        return self * 1000
    }
}

var double = 5.0
double.m
double.km
double.sm
double.mm
