//Solution goes in Sources
import Foundation

struct Clock {
	var hour: Int //number of hours
	var minute: Int //number of minutes

	init(hours: Int = 0, minutes: Int = 0) { //initilize
		let minuteOverflow = Int(minutes / 60) //minute overflow factor
		hour = (hours + minuteOverflow) %% 24 //hour added to minute overflow factor, remainder of 24 hours
		minute = minutes %% 60 //number of minutes is input remanider of 60

		if minutes < 0 { //if number of minutes is smaller than 0
			hour -= 1 //take 1 hour
			hour = hour %% 24 //number of hours is the remainder of number of hours  / 24
		}
	}

	func add(minutes: Int) -> Clock {
		return Clock(hours: hour, minutes: minute + minutes/*add minutes*/)
	}

	func subtract(minutes: Int) -> Clock {
		return Clock(hours: hour, minutes: minute - minutes/*take minutes*/)
	}
}

extension Clock: Equatable {
	static func == (lhs: Clock, rhs: Clock) -> Bool {
		return lhs.hour == rhs.hour && lhs.minute == rhs.minute //check if thee two clocks have the same minute and hour vlues
	}
}

extension Clock: CustomStringConvertible {
	var description: String {
		return String(format: "%02d:%02d", hour, minute) //format description string
	}
}

infix operator %% //negative number capable modulo
func %% (lhs: Int, rhs: UInt) -> Int {
	let result = lhs % Int(rhs)
	if result >= 0 {
		return result
	} else {
		return result + Int(rhs)
	}
}
