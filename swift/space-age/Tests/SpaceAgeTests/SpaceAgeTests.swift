import XCTest
@testable import SpaceAge

class SpaceAgeTests: XCTestCase {
    func testAgeInSeconds() {
        let age = SpaceAge(time_in_seconds: 1_000_000)
        XCTAssertEqual(1_000_000, age.seconds)
    }

    func testAgeInEarthYears() {
        let age = SpaceAge(time_in_seconds: 1_000_000_000)
        XCTAssertEqual(31.69, age.onEarth)
    }

    func testAgeInMercuryYears() {
        let age = SpaceAge(time_in_seconds: 2_134_835_688)
        XCTAssertEqual(67.65, age.onEarth)
        XCTAssertEqual(280.89, age.onMercury)
    }

    func testAgeInVenusYears() {
        let age = SpaceAge(time_in_seconds: 189_839_836)
        XCTAssertEqual(6.02, age.onEarth)
        XCTAssertEqual(9.78, age.onVenus)
    }

    func testAgeOnMars() {
        let age = SpaceAge(time_in_seconds: 2_329_871_239)
        XCTAssertEqual(73.83, age.onEarth)
        XCTAssertEqual(39.25, age.onMars)
    }

    func testAgeOnJupiter() {
        let age = SpaceAge(time_in_seconds: 901_876_382)
        XCTAssertEqual(28.58, age.onEarth)
        XCTAssertEqual(2.41, age.onJupiter)
    }

    func testAgeOnSaturn() {
        let age = SpaceAge(time_in_seconds: 3_000_000_000)
        XCTAssertEqual(95.07, age.onEarth)
        XCTAssertEqual(3.23, age.onSaturn)
    }

    func testAgeOnUranus() {
        let age = SpaceAge(time_in_seconds: 3_210_123_456)
        XCTAssertEqual(101.72, age.onEarth)
        XCTAssertEqual(1.21, age.onUranus)
    }

    func testAgeOnNeptune() {
        let age = SpaceAge(time_in_seconds: 8_210_123_456)
        XCTAssertEqual(260.17, age.onEarth)
        XCTAssertEqual(1.58, age.onNeptune)
    }

    static var allTests: [(String, (SpaceAgeTests) -> () throws -> Void)] {
        return [
            ("testAgeInSeconds", testAgeInSeconds),
            ("testAgeInEarthYears", testAgeInEarthYears),
            ("testAgeInMercuryYears", testAgeInMercuryYears),
            ("testAgeInVenusYears", testAgeInVenusYears),
            ("testAgeOnMars", testAgeOnMars),
            ("testAgeOnJupiter", testAgeOnJupiter),
            ("testAgeOnSaturn", testAgeOnSaturn),
            ("testAgeOnUranus", testAgeOnUranus),
            ("testAgeOnNeptune", testAgeOnNeptune),
        ]
    }
}
