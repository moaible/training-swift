
public protocol TrainingItemConvertible {
    var question: String { get }
    associatedtype Input
    associatedtype Output
    func solve(_ input: Input) -> Output
}

public class Quiz000: TrainingItemConvertible {

    public var question: String {
        """
        ---
        実行するとHello World!と表示するプログラムを作成せよ。
        【実行例】
        Hello World!
        ---
        """
    }

    public typealias Input = Void
    public typealias Output = String

    public func solve(_ input: Input) -> Output {
        print(question)
        let answer = "Hello World!"
        print(answer)
        return answer
    }
}

public class Quiz001: TrainingItemConvertible {

    public var question: String {
        """
        ---
        12345+23456を計算して結果を表示するプログラムを作成せよ。
        【実行例】
        12345 + 23456 = 35801
        ---
        """
    }

    public typealias Input = (first: Int, second: Int)
    public typealias Output = Int
    
    public func solve(_ input: Input) -> Output {
        print(question)
        let answer = input.first + input.second
        print(answer)
        return answer
    }
}

public class Quiz002: TrainingItemConvertible {

    public var question: String {
        """
        12345を7で割った余りを表示するプログラムを作成せよ。
        【実行例】
        12345 ÷ 7 の余りは 4
        $
        """
    }

    public typealias Input = (number: Int, divisor: Int)
    public typealias Output = String
    
    public func solve(_ input: Input) -> Output {
        print(question)
        let result = input.number % input.divisor
        let answer = "\(input.number) ÷ \(input.divisor) の余りは \(result)"
        print(answer)
        return answer
    }
}

public class Quiz003: TrainingItemConvertible {

    public var question: String {
        """
        ---
        整数値を入力させ、その入力値を表示するプログラムを作成せよ。
        【実行例、下線部は入力例】
        input number: 123
        your number is 123
        ---
        """
    }

    public typealias Input = Int
    public typealias Output = String

    public func solve(_ input: Input) -> Output {
        print(question)
        let answer = "your number is \(input)"
        print(answer)
        return answer
    }
}

public class Quiz004: TrainingItemConvertible {

    public var question: String {
        """
        ---
        整数値を入力させ、その入力値を3倍した計算結果を表示するプログラムを作成せよ。
        【実行例、下線部は入力例】
        input number: 123
        answer = 369
        ---
        """
    }

    public typealias Input = Int
    public typealias Output = String

    public func solve(_ input: Input) -> Output {
        print(question)
        let result = input * 3
        let answer = "answer = \(result)"
        print(answer)
        return answer
    }
}

public class Quiz005: TrainingItemConvertible {

    public var question: String {
        """
        ---
        整数値を2つ入力させ、それらの値の和、差、積、商と余りを求めるプログラムを作成せよ。なお、差と商は1つ目の値から2つ目の値を引いた、あるいは割った結果とする。余りは無い場合も0と表示するのでよい。
        【実行例、下線部は入力例】
        input 1st number: 123
        input 2nd number: 7
        和: 130
        差: 116
        積: 861
        商: 17, 余り: 4
        input 1st number: 123
        input 2nd number: 3
        和: 126
        差: 120
        積: 369
        商: 41, 余り: 0
        ---
        """
    }

    public typealias Input = (first: Int, second: Int)
    public typealias Output = String

    public func solve(_ input: Input) -> Output {
        print(question)
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
        print(answer)
        return answer
    }
}

public class Quiz006: TrainingItemConvertible {

    public var question: String {
        """
        ---
        整数値を入力させ、値が0ならzeroと表示するプログラムを作成せよ。
        【実行例、下線部は入力例】
        input number: 0
        zero
        input number: 1
        ---
        """
    }

    public typealias Input = Int
    public typealias Output = String

    public func solve(_ input: Input) -> Output {
        print(question)
        var answer = ""
        if input == 0 {
            answer = "zero"
        }
        print(answer)
        return answer
    }
}

public class Quiz007: TrainingItemConvertible {

    public var question: String {
        """
        ---
        整数値を入力させ、値が0ならzero、0でなければnot zeroと表示するプログラムを作成せよ。
        【実行例、下線部は入力例】
        input number: 0
        zero
        input number: 1
        not zero
        ---
        """
    }

    public typealias Input = Int
    public typealias Output = String

    public func solve(_ input: Input) -> Output {
        print(question)
        let answer: String
        if input == 0 {
            answer = "zero"
        } else {
            answer = "not zero"
        }
        print(answer)
        return answer
    }
}