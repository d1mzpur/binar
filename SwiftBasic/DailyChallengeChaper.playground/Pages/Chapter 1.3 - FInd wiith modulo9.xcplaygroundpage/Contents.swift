var array: [Int] = [1,2,3,4,5,6,7,8]

var hasil = array.reduce(0, +)

hasil = hasil % 9
hasil = hasil  == 0 ? 9 : hasil

print(hasil)
