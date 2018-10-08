//Solution goes in Sources

class SimulatedRobot {
	func orient(_ toBearing: Bearing) { self.bearing = toBearing }

	func turnRight() {
		switch bearing {
		case .north:
			bearing = .east
		case .east:
			bearing = .south
		case .south:
			bearing = .west
		default:
			bearing = .north
		}
	}

	func turnLeft() {
		switch bearing {
		case .north:
			bearing = .west
		case .west:
			bearing = .south
		case .south:
			bearing = .east
		default:
			bearing = .north
		}
	}

	func at(x: Int, y: Int) { self.coordinates = [x, y] }

	func advance() {
		switch bearing {
		case .north:
			coordinates[1] += 1
		case .east:
			coordinates[0] += 1
		case .south:
			coordinates[1] -= 1
		default:
			coordinates[0] -= 1
		}
	}

	func place(x: Int, y: Int, direction: Bearing) {
		coordinates = [x, y]
		bearing = direction
	}

	func instructions(_ orders: String) -> [Instruction] {
		var theInstructions = [Instruction]()
		for order in orders {
			switch order {
			case "L":
				theInstructions.append(.turnLeft)
			case "R":
				theInstructions.append(.turnRight)
			default:
				theInstructions.append(.advance)

			}
		}
		return theInstructions
	}

	func evaluate(_ orders: String) {
		for order in orders {
			switch order {
			case "L": turnLeft()
			case "R": turnRight()
			default: advance()

			}
		}
	}

	var bearing: Bearing = .north
	var coordinates: [Int] = [0, 0]
	
}

enum Bearing {
	case north
	case east
	case south
	case west
}

enum Instruction {
	case turnLeft
	case turnRight
	case advance
}
