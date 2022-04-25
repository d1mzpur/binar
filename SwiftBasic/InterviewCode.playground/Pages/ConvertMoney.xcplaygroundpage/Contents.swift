// Pecahan rupiah 2000, 5000, 10.000, 20.000, 50.000 dalam array
// Ada input 36.000 output adalah element dalam array [20.000, 10.000, 5000, 2000, 2000, 2000]
// kalau 37.500 output adalah [20.000, 10.000, 5000, 2000, 2000]

let e = 50000
let d = 20000
let c = 10000
let b = 5000
let a = 2000

func exchange (money: Int){
    var result = [Int]()
    var tempMoney = money
    var avalible = true
    
    while avalible {
        if tempMoney >= e {
            tempMoney = tempMoney - e
            result.append(e)
        }else if tempMoney >= d {
            tempMoney = tempMoney - d
            result.append(d)
        }else if tempMoney >= c {
            tempMoney = tempMoney - c
            result.append(c)
        }else {
            if tempMoney % a == 0 {
                if tempMoney >= a {
                    tempMoney = tempMoney - a
                    result.append(a)
                } else {
                    avalible = false
                    if tempMoney >= b {
                        tempMoney = tempMoney - b
                        result.append(b)
                    } else {
                        avalible = false
                    }
                }
            }
        }
    }
    print(result)
}

exchange(money: 36000)

