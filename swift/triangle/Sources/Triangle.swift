//Solution goes in Sources

class Triangle {
	init(_ side1: Double, _ side2: Double, _ side3: Double) {
		let sides = [side1, side2, side3].sorted()

		guard sides[0] > 0 && sides[1] > 0 && sides[2] > 0 && sides[0] + sides[1] >= sides[2] else {
			kind = "ErrorKind"
			return
		}

		if sides[0] == sides[1] && sides[0] == sides[2] && sides[1] == sides[2] {
			kind = "Equilateral"
		} else if (sides[1] == sides[2]) || (sides[0] == sides[2]) || (sides[0] == sides[1]) {
			kind = "Isosceles"
		} else if (sides[0] != sides[1]) && (sides[0] != sides[2]) && (sides[1] != sides[2]) {
			kind = "Scalene"
		}
	}
	var kind = ""
}
