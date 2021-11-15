import XCTest
@testable import Training

final class TrainingTests: XCTestCase {

    func testQuiz000() throws {
        XCTAssertEqual(Quiz000().solve(()), "Hello World!")
    }

    func testQuiz001() throws {
        XCTAssertEqual(Quiz001().solve((12345, 23456)), 35801)
    }

    func testQuiz002() throws {
        XCTAssertEqual(Quiz002().solve((12345, 7)), "12345 ÷ 7 の余りは 4")
    }

    func testQuiz003() throws {
        XCTAssertEqual(Quiz003().solve(123), "your number is 123")
    }

    func testQuiz004() throws {
        XCTAssertEqual(Quiz004().solve(123), "answer = 369")
    }

    func testQuiz005() throws {
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
        XCTAssertEqual(Quiz006().solve(0), "zero")
        XCTAssertEqual(Quiz006().solve(1), "")
    }

    func testQuiz007() throws {
        XCTAssertEqual(Quiz007().solve(0), "zero")
        XCTAssertEqual(Quiz007().solve(1), "not zero")
    }

    func testQuiz008() throws {
        XCTAssertEqual(Quiz008().solve(0), "")
        XCTAssertEqual(Quiz008().solve(-1), "")
        XCTAssertEqual(Quiz008().solve(1), "positive")
    }

    func testQuiz009() throws {
        XCTAssertEqual(Quiz009().solve(0), "zero")
        XCTAssertEqual(Quiz009().solve(-1), "negative")
        XCTAssertEqual(Quiz009().solve(1), "positive")
    }

    func testQuiz010() throws {
        XCTAssertEqual(Quiz010().solve(1), "absolute value is 1")
        XCTAssertEqual(Quiz010().solve(-2), "absolute value is 2")
    }
}
