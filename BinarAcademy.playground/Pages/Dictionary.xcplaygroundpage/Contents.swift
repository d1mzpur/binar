//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

var dict: [Int: String] = [1: "Kucing", 2: "Gajah"]

print(dict[1])

let values = Array(dict.values)

let value: [String] = dict.values.map { $0 }

if let animal: String = dict[1] {
    print(animal)
}

