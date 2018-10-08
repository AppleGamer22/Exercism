//Solution goes in Sources
import Foundation

class Isogram {
	static func isIsogram(_ text: String) -> Bool {
		let characters = text.replacingOccurrences(of: " ", with: "").replacingOccurrences(of: "-", with: "").lowercased().characters
		return Set(characters).count == characters.count
	}
}
