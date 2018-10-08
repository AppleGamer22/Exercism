//Solution goes in Sources
import Foundation

class DNA {
	init?(strand: String) {
		for aNucleotide in strand {
			if aNucleotide != "T" && aNucleotide != "A" && aNucleotide != "C" && aNucleotide != "G" {
				return nil
			}
		}
		self.strand = strand

	}
	let strand: String

	func count(_ nucleotide: Character) -> Int {
		var count = Int()
		if strand.isEmpty {
			count = 0
		} else {
			for aNucleotide in strand {
				if aNucleotide == nucleotide {
					count += 1
				}
			}
		}
		return count
	}

	func counts() -> [String: Int] {
		var countT = 0, countA = 0, countC = 0, countG: Int = 0
		if strand.isEmpty {
			return ["T": 0, "A": 0, "C": 0, "G": 0]
		} else {
			for aNucleotide in strand {
				switch aNucleotide {
				case "T":
					countT += 1
					break
				case "A":
					countA += 1
					break
				case "C":
					countC += 1
					break
				case "G":
					countG += 1
					break
				default:
					break
				}
		}
		return ["T": countT, "A": countA, "C": countC, "G": countG]
		}
	}

}
