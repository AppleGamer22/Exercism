//Solution goes in Sources

class ListOps {
	static func append<T>(_ item1: [T], _ item2: [T]) -> [T] {
		return item1 + item2
	}

	static func concat< T >( _ lists: [ T ]... ) -> [ T ] {
		var concated: [T] = []
		for list in lists {
			for item in list {
				concated = append(concated, [ item])
			}
		}
		return concated
	}

	static func filter<T>(_ list: [T], _ pred: (T) -> Bool) -> [T] {
		var filtered: [ T ] = []
		for item in list {
			if pred(item) {
				filtered = append(filtered, [item])
			}
		}
		return filtered
	}

	static func length<T>(_ list: [T]) -> Int { return list.count }

	static func map<T>(_ list: [T], _ pred: (T) -> T) -> [T] {
		var mapped: [T] = []
		for item in list {
			mapped = append(mapped, [pred(item)])
		}
		return mapped
	}

	static func foldLeft<T>(_ list: [T], accumulated: T, combine: (T, T) -> T) -> T {
		var folded: T = accumulated
		for item in list {
			folded = combine(folded, item)
		}
		return folded
	}

	static func foldRight<T>(_ list: [T], accumulated: T, combine: (T, T) -> T) -> T {
		var folded: T = accumulated
		for item in reverse(list) {
			folded = combine(item, folded)
		}
		return folded
	}

	static func reverse<T>(_ list: [T]) -> [T] {
		var reversed: [T] = []
		for item in list {
			reversed = append([item], reversed)
		}
		return reversed
	}
}
