//Solution goes in Sources
func TwoFer(name: String) -> String {
    if name == "" {
        return "One for you, one for me."
    }
    return "One for \(name), one for me."
}
print(TwoFer(name: "Alice"))
print(TwoFer(name: ""))
