import Foundation

func strongPassword(length: Int) {
    let pwdLetters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%&()0123456789"
    var passWord = ""
    for _ in 0 ..< length {
        passWord.append(pwdLetters.randomElement()!)
    }
    print("Generated password: \(passWord)")
}

strongPassword(length: 32)
