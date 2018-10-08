//Solution goes in Sources
class Nucleotide {
    var output: String
    var input: String
    init(Input: String) throws {
        input = Input
        //let rna = ["G": "C", "C": "G", "T": "A", "A": "U"]
        output = ""
        for i in input {
            switch i {
            case "G":
                output += "C"
                break
            case "C":
                output += "G"
                break
            case "T":
                output += "A"
                break
            case "A":
                output += "U"
            default:
                throw TranscriptionError.invalidNucleotide
            }
        }
        complementOfDNA()
    }
    func complementOfDNA() -> String { return output }
    enum TranscriptionError: Error {
        case invalidNucleotide
    }
}
