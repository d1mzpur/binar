//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

// Skill Metrics

//1

var string: String = "Dimas Purnomo"
var character: Character = "A"
var numberInteger: Int = 1
var numberFloat: Float = 1
var numberDouble: Double = 1
var bool: Bool = true
var array: [String] = ["Ayam","Kucing"]
var set: Set = ["Apple", "Apple", "Orange"]
var dictionary: [Int: String] = [404: "File not found", 200: "Okey"]

print(string)
print(character)
print(numberInteger)
print(numberFloat)
print(numberDouble)
print(bool)
print(array)
print(set)
print(dictionary)

//2

var variableVar: Int = 1
let variableLet: Int = 2

variableVar = 2

print(variableLet)
print(variableVar)


//3
var result: Double
var numberFirst: Double = 1
var numberTwo: Double = 5

var tambah = numberFirst + numberTwo
var kurang = numberFirst - numberTwo
let bagi = numberFirst * numberTwo
let kali = numberFirst / numberTwo

print(tambah)
print(kurang)
print(bagi)
print(kali)

var isEvenSama: Bool = numberFirst == numberTwo
var isEvenLebih: Bool = numberFirst > numberTwo
var isEvenKurang: Bool = numberFirst < numberTwo
var isEvenLebihDari: Bool = numberFirst >= numberTwo
var isEvenKurangDari: Bool = numberFirst <= numberTwo
var isEvenNotSama: Bool = !isEvenSama

print(isEvenSama)
print(isEvenLebih)
print(isEvenKurang)
print(isEvenLebihDari)
print(isEvenKurangDari)
print(isEvenNotSama)

//4
var data: [String] = ["Nasi Goreng", "Soto", "Dendeng Balado", "Nasi Uduk","Nasi Gila"]

if data.isEmpty {
    print("Data kosong")
} else {
    print("Data ada isinya")
}

data.append("Nasi Padang")
data += ["Nasi Bakar"]

data.insert("Ayam Bakar", at: 0)

data.remove(at: 0)

data.removeAll() {
    data in
        data == "Nasi Goreng"
}
print(data)

//5

for data in data {
    print(data)
}

var i = 0

while i < data.count {
    print(data[i])
    i+=1
}



// 6
for _data in data {
    if _data == "Dendeng Balado" {
        print("Aku suka makan nasi pakai " + _data)
    } else {
        print(_data)
    }
}



