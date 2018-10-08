//Solution goes in Sources
import Foundation

class WordCount {
	init(words: String) {
		let unallowedCharcterSet = CharacterSet(charactersIn: "!&$%^")
		theWords = words.replacingOccurrences(of: ": ", with: "").replacingOccurrences(of: ",", with: "").trimmingCharacters(in: unallowedCharcterSet).components(separatedBy: " ")
	}
	var theWords = [String]()

	func count() -> [String: Int] {
		var counts = [String: Int]()
		for word in theWords {
			let count = counts[word.lowercased()] ?? 0
			counts[word.lowercased()] = count + 1
		}
		return counts
	}
}
