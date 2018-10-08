//Solution goes in Sources
class Raindrops {
	init(_ number: Int) {
		for index in 0...2 {
			switch index {
			case 0:
				if number % 3 == 0 {
					sounds += "Pling"
				}
			case 1:
				if number % 5 == 0 {
					sounds += "Plang"
				}
			case 2:
				if number % 7 == 0 {
					sounds += "Plong"
				} else if number % 7 != 0 && number % 5 != 0 && number % 3 != 0 {
					sounds = "\(number)"
				}
			default:
				break
			}
		}
	}
	var sounds = ""
}
