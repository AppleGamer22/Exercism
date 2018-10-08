//Solution goes in Sources
class ETL {
	static func transform(_ old: [Int: [String]]) -> [String: Int] {
		var output = [String: Int]()
		for items in old {
			for item in items.value {
				output[item.lowercased()] = items.key
			}
		}
		return output
	}
}
