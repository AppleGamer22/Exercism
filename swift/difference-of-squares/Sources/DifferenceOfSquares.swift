//Solution goes in Sources
class Squares {
    var squareOfSums: Int = 0//(1 + 2 + ... + n)²
    var sumOfSquares: Int = 0 //1² + 2² + ... + n²
    var differenceOfSquares: Int = 0//squareOfSums - sumOfSquares

    init(n: Int) {
        if n != 0 {
            for i in 1...n {
                squareOfSums += i
            }
            squareOfSums = squareOfSums * squareOfSums
            //print(squareOfSums)
            for i in 1...n {
                sumOfSquares += i * i
            }
            //print(sumOfSquares)
            differenceOfSquares = squareOfSums - sumOfSquares; print(differenceOfSquares)
        } else {
            return
        }
    }
}
