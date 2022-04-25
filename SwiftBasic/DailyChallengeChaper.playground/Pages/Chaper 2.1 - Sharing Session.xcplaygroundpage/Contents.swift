//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

class Human {
    var firstName: String = "James"
    var lastName: String = "Adam"
    var nickName: String  {"\(firstName) \(lastName)"}
    
    func printData(){
        print(firstName)
        print(lastName)
        print(nickName)
    }

    init(firstName: String, lastName: String){
    self.firstName = firstName
    self.lastName = lastName
    }
}

class Person: Human{
    
    
    override func printData(){
        super.init
        print("Data Class Dimas")
    }
}

var james = Human(firstName: "James", lastName: "Adam")
var dimas = Person(firstName: "Dimas", lastName: "Purnomo")
print(dimas.printData())
