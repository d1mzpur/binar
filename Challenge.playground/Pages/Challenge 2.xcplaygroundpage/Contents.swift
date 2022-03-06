enum transmission {
    case automatic, manual
}

protocol Vehicle {
    var colors: String { set get }
    var transmission: transmission { set get }
    var year: Int { set get }
    
    func getGrade (year: Int) -> (String)
}

class Car: Vehicle {
    var wheell: Int
    var colors: String
    var transmission: transmission
    var year: Int
    var grade: String?
    
    
    init(colors: String, year: Int, transmission: transmission){
        wheell = 4
        self.transmission = transmission
        self.colors = colors
        self.year = year
    }
    
    func printData(){
        print("Year Car : \(year)")
        print("Grade Car : \(getGrade(year: year))")
        print("Colors Car : \(colors)")
        print("Transmission Car : \(transmission)")
    }
}

extension Car {
    func getGrade(year: Int) -> String {
        if year < 2010 {
            grade = "Grade C"
        } else if year < 2020 {
            grade = "Grade B"
        } else {
            grade = "Grade A"
        }
        return grade!
    }
}

class Taft: Car {
    override func printData(){
        print("Type Car : Taft")
        super.printData()
    }
}

var car = Taft(colors: "Black", year: 2000, transmission: .manual)
car.printData()
