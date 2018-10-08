//Solution goes in Sources
class GradeSchool {
	var roster = [Int: [String]]()
	var sortedRoster: [Int: [String]] {
		return roster.mapValues{ $0.sorted() }
	}
	func addStudent(_ name: String, grade: Int) {
		var gradeStudents = roster[grade] ?? []
		gradeStudents.append(name)
		roster[grade] = gradeStudents
	}

	func studentsInGrade(_ grade: Int) -> [String] {
		return roster[grade] ?? []
	}
}
