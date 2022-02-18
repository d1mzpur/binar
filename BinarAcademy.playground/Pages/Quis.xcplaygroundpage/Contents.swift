//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

var numbers: [Int] = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

for number in numbers {
    if number == 0{
        print("")
    }else if number % 15 == 0{
        print("FizzBuzz")
    }else if (number%3) == 0{
        print("Fizz")
    } else if (number%5) == 0{
        print("Buzz")
    }   else {
        print(number)
    }
}
