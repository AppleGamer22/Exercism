//Solution goes in Sources
import Foundation

class Grains {
	static var total: UInt64 {
		return 18_446_744_073_709_551_615
	}
	static func square(_ grains: Int) throws -> UInt64 {
		if grains > 64 {
			throw GrainsError.inputTooHigh(GrainsError.message(input: grains))
		} else if grains < 1 {
			throw GrainsError.inputTooLow(GrainsError.message(input: grains))
		} else if grains == 1 {
			return 1
		} else {
			return UInt64((pow(2, Double(grains - 1))))
		}
	}

	enum GrainsError: Error {
		case inputTooHigh(String)
		case inputTooLow(String)

		static func message(input: Int) -> String {
			return "Input[\(input)] invalid. Input should be between 1 and 64 (inclusive)"
		}
	}
}
