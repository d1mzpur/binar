//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

var fruits: [String] = ["Apple", "Orange","Manggo","Banana"]
var number: [Int] = [1,2,3,4,5]

print(fruits.count)
fruits.append("Watermalon")
print(fruits.count)

//

let index: Int = 10
if index < fruits.count {
    print(fruits[index])
}

var names : [String] = ["Alfa", "Beta", "Carli"]
var res: [String] = fruits + names

fruits.insert("durian", at: 0)
fruits.removeAll() {
    fruits in
        fruits == "orange"
}

print(fruits)

fruits.sorted{$0 < $1}
fruits.filter{$0 == "Apple"}



// 2D to 1D

var arr2D: [[Int]] = [[1,2,3],[1,2,3]]
print(arr2D)

var arr1D: [Int] = arr2D.flatMap { $0 }
print(arr1D)


//random

var random: [Any] = [1,"Binar", true,1.0]
