//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

class Person {
    var firstName: String = ""
    var lastName: String = ""
    var fullName: String { "\(firstName) \(lastName)" }
    var semester: Int = 0
    var getSemester: String = ""
    var codeLanguage: String = ""
    var yearsOfExperience: Int = 0
    var levelExperience: String = ""
    
    init(firstName: String, lastName: String, semester: Int, codeLanguage: String, yearsOfExperience: Int){
        self.firstName = firstName
        self.lastName = lastName
        self.semester = semester
        self.codeLanguage = codeLanguage
        self.yearsOfExperience = yearsOfExperience
    }
    
    func countSemester(semester: Int) -> String {
        if semester % 2 == 0{
            getSemester = "Semester Genap"
        }else{
            getSemester = "Semester Ganjil"
        }
        return getSemester
    }
    
    func getlevelExperience(yearsOfExperience: Int) -> String {
        if yearsOfExperience > 5 {
            levelExperience == "Lead \(codeLanguage)"
        } else if yearsOfExperience < 5 && yearsOfExperience > 3 {
            levelExperience = "Senior \(codeLanguage)"
        } else {
            levelExperience = "Junior \(codeLanguage)"
        }
        return levelExperience
    }
    
    func identifyPerson (){
        print("Nama saya \(fullName) adalah mahasiswa \(countSemester(semester: semester)). Untuk saat level sudah setara dengan \(getlevelExperience(yearsOfExperience: 3))" )
    }
    
}

let person = Person(firstName: "Dimas", lastName: "Purnomo", semester: 8, codeLanguage: "Dart Swift", yearsOfExperience: 3)

person.identifyPerson()

