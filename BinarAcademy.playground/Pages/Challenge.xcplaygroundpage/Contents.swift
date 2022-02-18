//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

var input: [Int] = [1,1,2,2,3,4,1]
let results: Int = 4

var temp: Int = 0
var temp2: [Int] = []
var temp3: [[Int]] = [[Int]]()


func sum(data: [Int],result: Int) {
    let input = Array(Set(input))
    
    for i in input {
        if i < result {
            temp = i
            temp2 += [temp]
        }
    }
    
    if (temp2.count % 2 == 0) {
        for x in temp2 {
            for y in temp2.reversed() {
                if (x + y == result) {
                    
                    if (x < (temp2.count/2)) {
                        temp3 += [[x,y]]
                    }
                }
            }
        }
    } else {
        for x in temp2 {
            for y in temp2.reversed() {
                if (x + y == result) {
                    
                    if (x < ((temp2.count/2) + 2)) {
                        temp3 += [[x,y]]
                    }
                }
            }
        }
    }
    print(temp3)
}

sum(data: input, result: results)
