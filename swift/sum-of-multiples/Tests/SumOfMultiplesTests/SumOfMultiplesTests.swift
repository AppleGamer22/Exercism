import XCTest
@testable import SumOfMultiples

class SumOfMultiplesTests: XCTestCase {
    func testSumTo1() {
        XCTAssertEqual(0, SumOfMultiples.toLimit(1, multiples: [3, 5]))
    }

    func testSumTo3() {
        XCTAssertEqual(3, SumOfMultiples.toLimit(4, multiples: [3, 5]))
    }

    func testSumTo10() {
        XCTAssertEqual(23, SumOfMultiples.toLimit(10, multiples: [3, 5]))
    }

    func testSumTo100() {
        XCTAssertEqual(2318, SumOfMultiples.toLimit(100, multiples: [3, 5]))
    }

    func testSumTo1000() {
        XCTAssertEqual(233168, SumOfMultiples.toLimit(1000, multiples: [3, 5]))
    }

    func testConfigurable_7_13_17_to_20() {
        XCTAssertEqual(51, SumOfMultiples.toLimit(20, multiples: [7, 13, 17]))
    }

    func testConfigurable_4_6_to_15() {
        XCTAssertEqual(30, SumOfMultiples.toLimit(15, multiples: [4, 6]))
    }

    func testConfigurable_5_6_8_to_150() {
        XCTAssertEqual(4419, SumOfMultiples.toLimit(150, multiples: [5, 6, 8]))
    }

    func testConfigurable_43_47_to_10000() {
        XCTAssertEqual(2203160, SumOfMultiples.toLimit(10000, multiples: [43, 47]))
    }

    func testConfigurable_0_to_10() {
        XCTAssertEqual(0, SumOfMultiples.toLimit(10, multiples: [0]))
    }

    func testConfigurable_0_1_to_10() {
        XCTAssertEqual(45, SumOfMultiples.toLimit(10, multiples: [0, 1]))
    }

    func testConfigurable_0_27_to_0() {
        XCTAssertEqual(0, SumOfMultiples.toLimit(0, multiples: [0, 27]))
    }

    static var allTests: [(String, (SumOfMultiplesTests) -> () throws -> Void)] {
        return [
            ("testSumTo1", testSumTo1),
            ("testSumTo3", testSumTo3),
            ("testSumTo10", testSumTo10),
            ("testSumTo100", testSumTo100),
            ("testSumTo1000", testSumTo1000),
            ("testConfigurable_7_13_17_to_20", testConfigurable_7_13_17_to_20),
            ("testConfigurable_4_6_to_15", testConfigurable_4_6_to_15),
            ("testConfigurable_5_6_8_to_150", testConfigurable_5_6_8_to_150),
            ("testConfigurable_43_47_to_10000", testConfigurable_43_47_to_10000),
            ("testConfigurable_0_to_10", testConfigurable_0_to_10),
            ("testConfigurable_0_1_to_10", testConfigurable_0_1_to_10),
            ("testConfigurable_0_27_to_0", testConfigurable_0_27_to_0)
        ]
    }
}
