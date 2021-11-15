import XCTest
@testable import Training

final class TrainingTests: XCTestCase {

    func testQuiz000() throws {
        print("""
        実行するとHello World!と表示するプログラムを作成せよ。
        【実行例】
        Hello World!
        """)
        XCTAssertEqual(Quiz000().solve(()), "Hello World!")
    }

    func testQuiz001() throws {
        print("""
        12345+23456を計算して結果を表示するプログラムを作成せよ。
        【実行例】
        12345 + 23456 = 35801
        """)
        XCTAssertEqual(Quiz001().solve((12345, 23456)), 35801)
    }

    func testQuiz002() throws {
        print("""
        12345を7で割った余りを表示するプログラムを作成せよ。
        【実行例】
        12345 ÷ 7 の余りは 4
        $
        """)
        XCTAssertEqual(Quiz002().solve((12345, 7)), "12345 ÷ 7 の余りは 4")
    }

    func testQuiz003() throws {
        print("""
        整数値を入力させ、その入力値を表示するプログラムを作成せよ。
        【実行例、下線部は入力例】
        input number: 123
        your number is 123
        """)
        XCTAssertEqual(Quiz003().solve(123), "your number is 123")
    }

    func testQuiz004() throws {
        print("""
        整数値を入力させ、その入力値を3倍した計算結果を表示するプログラムを作成せよ。
        【実行例、下線部は入力例】
        input number: 123
        answer = 369
        """)
        XCTAssertEqual(Quiz004().solve(123), "answer = 369")
    }

    func testQuiz005() throws {
        print("""
        整数値を2つ入力させ、それらの値の和、差、積、商と余りを求めるプログラムを作成せよ。
        なお、差と商は1つ目の値から2つ目の値を引いた、あるいは割った結果とする。余りは無い場合も0と表示するのでよい。
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
        """)
        XCTAssertEqual(Quiz005().solve((123, 7)), """
        和: 130
        差: 116
        積: 861
        商: 17, 余り: 4
        """)
        XCTAssertEqual(Quiz005().solve((123, 3)), """
        和: 126
        差: 120
        積: 369
        商: 41, 余り: 0
        """)
    }

    func testQuiz006() throws {
        print("""
        整数値を入力させ、値が0ならzeroと表示するプログラムを作成せよ。
        【実行例、下線部は入力例】
        input number: 0
        zero
        input number: 1
        """)
        XCTAssertEqual(Quiz006().solve(0), "zero")
        XCTAssertEqual(Quiz006().solve(1), "")
    }

    func testQuiz007() throws {
        print("""
        整数値を入力させ、値が0ならzero、0でなければnot zeroと表示するプログラムを作成せよ。
        【実行例、下線部は入力例】
        input number: 0
        zero
        input number: 1
        not zero
        """)
        XCTAssertEqual(Quiz007().solve(0), "zero")
        XCTAssertEqual(Quiz007().solve(1), "not zero")
    }

    func testQuiz008() throws {
        print("""
        整数値を入力させ、値が正であればpositiveと表示するプログラムを作成せよ。ただし0は正には含まない。
        【実行例、下線部は入力例】
        input number: 1
        positive
        input number: -1
        input number: 0
        """)
        XCTAssertEqual(Quiz008().solve(0), "")
        XCTAssertEqual(Quiz008().solve(-1), "")
        XCTAssertEqual(Quiz008().solve(1), "positive")
    }

    func testQuiz009() throws {
        print("""
        整数値を入力させ、値が正であればpositive、負であればnegative、0であればzeroと表示するプログラムを作成せよ。
        【実行例、下線部は入力例】
        input number: 1
        positive
        input number: -1
        negative
        input number: 0
        zero
        """)
        XCTAssertEqual(Quiz009().solve(0), "zero")
        XCTAssertEqual(Quiz009().solve(-1), "negative")
        XCTAssertEqual(Quiz009().solve(1), "positive")
    }

    func testQuiz010() throws {
        print("""
        整数値を入力させ、その値を絶対値にして表示するプログラムを作成せよ。（できれば変数の値を絶対値に変えるようにせよ）
        【実行例、下線部は入力例】
        input number: 1
        absolute value is 1
        input number: -2
        absolute value is 2
        """)
        XCTAssertEqual(Quiz010().solve(1), "absolute value is 1")
        XCTAssertEqual(Quiz010().solve(-2), "absolute value is 2")
    }

    func testQuiz011() throws {
        print("""
        Hello World!を10回繰り返して表示するプログラムを作成せよ。
        【実行例、下線部は入力例】
        Hello World!
        Hello World!
        Hello World!
        Hello World!
        Hello World!
        Hello World!
        Hello World!
        Hello World!
        Hello World!
        Hello World!
        """)
        XCTAssertEqual(Quiz011().solve(()), """
        Hello World!
        Hello World!
        Hello World!
        Hello World!
        Hello World!
        Hello World!
        Hello World!
        Hello World!
        Hello World!
        Hello World!
        """)
    }

    func testQuiz012() throws {
        print("""
        整数値を入力させ、その値の回数だけHello World!を繰り返して表示するプログラムを作成せよ。
        【実行例、下線部は入力例】
        input number: 7
        Hello World!
        Hello World!
        Hello World!
        Hello World!
        Hello World!
        Hello World!
        Hello World!
        """)
        XCTAssertEqual(Quiz012().solve(7), """
        Hello World!
        Hello World!
        Hello World!
        Hello World!
        Hello World!
        Hello World!
        Hello World!
        """)
    }

    func testQuiz013() throws {
        print("""
        整数値を入力させ、0から入力値まで数を1ずつ増やして表示するプログラムを作成せよ。
        【実行例、下線部は入力例】
        input number: 5
        0
        1
        2
        3
        4
        5
        """)
        XCTAssertEqual(Quiz013().solve(5), """
        0
        1
        2
        3
        4
        5
        """)
    }

    func testQuiz014() throws {
        print("""
        整数値を入力させ、入力値から0まで数を1ずつ減らして表示するプログラムを作成せよ。
        【実行例、下線部は入力例】
        input number: 5
        5
        4
        3
        2
        1
        0
        """)
        XCTAssertEqual(Quiz014().solve(5), """
        5
        4
        3
        2
        1
        0
        """)
    }

    func testQuiz015() throws {
        print("""
        整数値を入力させ、0から入力値を超えない値まで2ずつ増やして表示するプログラムを作成せよ。
        【実行例、下線部は入力例】
        input number: 7
        0
        2
        4
        6
        """)
        XCTAssertEqual(Quiz015().solve(7), """
        0
        2
        4
        6
        """)
    }

    func testQuiz016() throws {
        print("""
        整数値を入力させ、入力値が0でなければ再度入力させ、0であれば終了するプログラムを作成せよ。
        【実行例、下線部は入力例】
        input number: 5
        input number: 3
        input number: -4
        input number: 0
        """)
        XCTAssertEqual(
            Quiz016().solve([]), [])
        XCTAssertEqual(
            Quiz016().solve([5, 3, -4, 0, 1, 2, 3]),
            ["continued", "continued", "continued", "end"])
    }
}
