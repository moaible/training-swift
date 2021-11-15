
public protocol TrainingItemConvertible {
    associatedtype Input
    associatedtype Output
    func solve(_ input: Input) -> Output
}

public class Quiz000: TrainingItemConvertible {

    public typealias Input = Void
    public typealias Output = String

    public func solve(_ input: Input) -> Output {
        let answer = "Hello World!"
        
        return answer
    }
}

public class Quiz001: TrainingItemConvertible {

    public typealias Input = (first: Int, second: Int)
    public typealias Output = Int
    
    public func solve(_ input: Input) -> Output {
        let answer = input.first + input.second
        
        return answer
    }
}

public class Quiz002: TrainingItemConvertible {

    public typealias Input = (number: Int, divisor: Int)
    public typealias Output = String
    
    public func solve(_ input: Input) -> Output {
        let result = input.number % input.divisor
        let answer = "\(input.number) ÷ \(input.divisor) の余りは \(result)"
        
        return answer
    }
}

public class Quiz003: TrainingItemConvertible {

    public typealias Input = Int
    public typealias Output = String

    public func solve(_ input: Input) -> Output {
        let answer = "your number is \(input)"
        
        return answer
    }
}

public class Quiz004: TrainingItemConvertible {

    public typealias Input = Int
    public typealias Output = String

    public func solve(_ input: Input) -> Output {
        let result = input * 3
        let answer = "answer = \(result)"
        
        return answer
    }
}

public class Quiz005: TrainingItemConvertible {

    public typealias Input = (first: Int, second: Int)
    public typealias Output = String

    public func solve(_ input: Input) -> Output {
        let summation = input.first + input.second
        let difference = input.first - input.second
        let product = input.first * input.second
        let quotient = input.first / input.second
        let remainder = input.first % input.second
        let answer = """
        和: \(summation)
        差: \(difference)
        積: \(product)
        商: \(quotient), 余り: \(remainder)
        """
        
        return answer
    }
}

public class Quiz006: TrainingItemConvertible {

    public typealias Input = Int
    public typealias Output = String

    public func solve(_ input: Input) -> Output {
        var answer = ""
        if input == 0 {
            answer = "zero"
        }
        
        return answer
    }
}

public class Quiz007: TrainingItemConvertible {

    public typealias Input = Int
    public typealias Output = String

    public func solve(_ input: Input) -> Output {
        let answer: String
        if input == 0 {
            answer = "zero"
        } else {
            answer = "not zero"
        }
        
        return answer
    }
}

public class Quiz008: TrainingItemConvertible {

    public typealias Input = Int
    public typealias Output = String

    public func solve(_ input: Input) -> Output {
        var answer = ""
        if input > 0 {
            answer = "positive"
        }
        
        return answer
    }
}

public class Quiz009: TrainingItemConvertible {

    enum Result {
        case positive
        case negative
        case zero

        func identifier() -> String {
            switch self {
            case .positive:
                return "positive"
            case .negative:
                return "negative"
            case .zero:
                return "zero"
            }
        }
    }

    public typealias Input = Int
    public typealias Output = String

    public func solve(_ input: Input) -> Output {
        let answer: Result
        if input == 0 {
            answer = .zero
        } else if (input > 0) {
            answer = .positive
        } else {
            answer = .negative
        }
        
        return answer.identifier()
    }
}

public class Quiz010: TrainingItemConvertible {

    public typealias Input = Int
    public typealias Output = String

    public func solve(_ input: Input) -> Output {
        let answer = "absolute value is \(abs(input))"
        
        return answer
    }
}

public class Quiz011: TrainingItemConvertible {

    public typealias Input = Void
    public typealias Output = String

    public func solve(_ input: Input) -> Output {
        let answer = (0 ..< 10)
            .map { _ in "Hello World!" }
            .joined(separator: "\n")
        
        return answer
    }
}

public class Quiz012: TrainingItemConvertible {

    public typealias Input = Int
    public typealias Output = String

    public func solve(_ input: Input) -> Output {
        let answer = (0 ..< input)
            .map { _ in "Hello World!" }
            .joined(separator: "\n")
        
        return answer
    }
}

public class Quiz013: TrainingItemConvertible {

    public typealias Input = Int
    public typealias Output = String

    public func solve(_ input: Input) -> Output {
        let answer = (0 ... input)
            .map { idx in String(idx) }
            .joined(separator: "\n")
        
        return answer
    }
}

public class Quiz014: TrainingItemConvertible {

    public typealias Input = Int
    public typealias Output = String

    public func solve(_ input: Input) -> Output {
        let answer = (0 ... input)
            .reversed()
            .map { idx in String(idx) }
            .joined(separator: "\n")
        
        return answer
    }
}

public class Quiz015: TrainingItemConvertible {

    public typealias Input = Int
    public typealias Output = String

    public func solve(_ input: Input) -> Output {
        let answer = (0 ... input / 2)
            .map { idx in String(idx * 2) }
            .joined(separator: "\n")
        
        return answer
    }
}

public class Quiz016: TrainingItemConvertible {

    public typealias Input = [Int]
    public typealias Output = [String]

    func untilElement<Element: Equatable>(
        _ array: Array<Element>, 
        atEnd endElement: Element,
        sum: Array<Element> = Array<Element>()) -> Array<Element>
    {
        if array.isEmpty {
            return []
        }
        guard sum.last == endElement else {
            return untilElement(
                Array(array.dropFirst()), 
                atEnd: endElement,
                sum: sum + [array.first!])
        }
        return sum
    }

    public func solve(_ input: Input) -> Output {
        let end = 0
        let answer = untilElement(input, atEnd: end).map {
            $0 == end ? "end" : "continued"
        }
        
        return answer
    }
}

public class Quiz017: TrainingItemConvertible {

    public typealias Input = Void
    public typealias Output = [Int]

    public func solve(_ input: Input) -> Output {
        let answer = Array((0 ..< 10))
        return answer
    }
}

public class Quiz018: TrainingItemConvertible {

    public typealias Input = Int
    public typealias Output = [Int]

    public func solve(_ input: Input) -> Output {
        let answer = (0 ..< 10).map { _ in input }
        return answer
    }
}

public class Quiz019: TrainingItemConvertible {

    public typealias Input = [Int]
    public typealias Output = [Int]

    public func solve(_ input: Input) -> Output {
        let answer = Array(input.prefix(5))
        return answer
    }
}
