//Solution goes in Sources
class SumOfMultiples {
    static func toLimit(_ limit: Int, multiples: [Int]) -> Int {
        var sum = 0
        var subSums = [Int]()
        if limit > 2 {
            for i1 in 1..<limit {
                for i2 in 0..<multiples.count {
                    if limit > multiples[i2] {
                        let singleSum = multiples[i2] * i1
                        if singleSum < limit || singleSum == limit - 1 {
                            subSums.append(singleSum)
                            if i2 == multiples.count - 1 {
                                for number in multiples {
                                    subSums.append(number)
                                }
                            }
                            subSums = Array(Set(subSums))
                        } else if singleSum == limit {
                            break
                        }
                    } else if limit < multiples[i2] {
                        sum = 0
                    }
                }
            }
        } else {
            sum = 0
        }
        for i1 in 0..<subSums.count {
            sum += subSums[i1]
        }
        return sum
    }
}

