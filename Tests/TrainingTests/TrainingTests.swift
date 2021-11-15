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
}
