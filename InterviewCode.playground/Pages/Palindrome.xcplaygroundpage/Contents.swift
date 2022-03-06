func palindrome(string: String)-> Bool{
    let char = Array(string)
    for i in 0..<char.count / 2 {
        if char[i] != char[char.count - 1 - i] {
            return false
        }
    }
    return true
}

palindrome(string: "ada")
