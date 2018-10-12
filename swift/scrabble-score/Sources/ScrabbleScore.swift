//Solution goes in Sources
class Scrabble {
	init(_ word: String?) {
		if let word = word {
			self.word = word
		} else {
			self.word = ""
		}
	}
	var word: String = ""
	var score: Int {
		return Scrabble.score(self.word)
	}

	static func score(_ word: String) -> Int {
		return word.uppercased().map(score(char:)).reduce(0, +)
	}

	private static func score(char: Character) -> Int {
		switch char {
		case "A", "E", "I", "O", "U", "L", "N", "R", "S", "T":
			return 1
		case "D", "G":
			return 2
		case "B", "C", "M", "P":
			return 3
		case "F", "H", "V", "W", "Y":
			return 4
		case "K":
			return 5
		case "J", "X":
			return 8
		case "Q", "Z":
			return 10
		default:
			return 0
		}
	}
}
/*
Letter                           Value
A, E, I, O, U, L, N, R, S, T       1
D, G                               2
B, C, M, P                         3
F, H, V, W, Y                      4
K                                  5
J, X                               8
Q, Z
*/
