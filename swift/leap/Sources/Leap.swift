//Solution goes in Sources
class yr {
    var isLeapYear: Bool
    init() {
        isLeapYear = false
    }

    func check(year: Int) {
        if year % 4 == 0 && year % 100 != 0 || year % 400 == 0 {
            isLeapYear = true
        } else {
            isLeapYear = false
        }
    }
}
func Year(calendarYear: Int) -> yr {
    let ny = yr()
    ny.check(year: calendarYear)
    return ny
}
