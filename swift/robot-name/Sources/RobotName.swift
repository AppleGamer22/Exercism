//Solution goes in Sources
import Foundation

class Robot {
	var name: String

	init() {
		name = Robot.generateName()
	}

	private static func generateName() -> String {
		let letters = Set("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
		return "\(letters.random()!)\(letters.random()!)\((100..<1000).random())"
	}

	func resetName() {
		name = Robot.generateName()
	}
}

extension Range {
	func random() -> Int {
		let min = UInt32(self.lowerBound as! Int)
		let max = UInt32(self.upperBound as! Int)

		return Int(UInt32.random(in: min...(max-min)))
	}
}

extension Set {
	func random() -> Element? {
		if count == 0 {
			return nil
		} else {
			return self[index(startIndex, offsetBy: (0..<count).random())]
		}
	}
}
