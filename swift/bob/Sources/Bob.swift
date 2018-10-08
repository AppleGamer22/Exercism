//Solution goes in Sources
class Bob {
    static func hey(_ input: String) -> String {
        if input.last == "?" {
            if input.uppercased() == input {
                return "Whoa, chill out!"
            }
            return "Sure."
        } else if input.last == "!" || input.uppercased() == input {
            return "Whoa, chill out!"
        } else if input == "     " || input == "" {
            return "Fine. Be that way!"
        } else {
            return "Whatever."
        }
    }
}
