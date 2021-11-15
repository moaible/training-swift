
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
        return "Hello World!"
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
        return input.first + input.second
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
        let answer = input.number % input.divisor
        return "\(input.number) ÷ \(input.divisor) の余りは \(answer)"
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
        return "your number is \(input)"
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
        let answer = input * 3
        return "answer = \(answer)"
    }
}