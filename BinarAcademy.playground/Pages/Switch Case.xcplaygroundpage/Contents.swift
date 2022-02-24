//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//MARK - String

var scoreString = "B+"

switch scoreString {
case "A":
    print("10")
case "B+":
    print("8")
case "B":
    print("7")
case "C+":
    print("6")
case "C":
    print("5")
default:
    print("Unknown")
    
}


// Mark - Number

var scoreNumber = 10

switch scoreNumber {
case 10:
    print("10")
case 8:
    print("8")
case 7:
    print("7")
case 6:
    print("6")
case 5:
    print("5")
default:
    print("Unknown")
    
}


// Mark - Tupple
let tuple = (2,"BinarAc")
switch tuple{
case (0,"Binar"):
    print("Binar")
case let (x, "Binar"):
    print("Benar")
case let (x, string):
    print("Salah")
default:
    print("")
}

