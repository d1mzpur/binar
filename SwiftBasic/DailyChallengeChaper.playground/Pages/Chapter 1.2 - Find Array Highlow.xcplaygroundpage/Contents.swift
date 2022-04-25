import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

var arr = [1,4,5,7,4,2,1]
var result = arr[0]

for i in arr {
    if i > result {
        result = i
    }
}

print(result)

