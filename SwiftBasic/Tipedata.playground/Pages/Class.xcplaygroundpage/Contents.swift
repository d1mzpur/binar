//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

class BangunRuang {
    let jumlahSisi: Int
    let panjangSisi: Int
    let warna: String
    
    init(jumlahSisi: Int, panjangSisi: Int, warna: String){
        self.jumlahSisi = jumlahSisi
        self.panjangSisi = panjangSisi
        self.warna = warna
    }
}

let kubus = BangunRuang(jumlahSisi: 20, panjangSisi: 4, warna: "Biru")
kubus.warna
kubus.jumlahSisi
kubus.panjangSisi

let balok = BangunRuang(jumlahSisi: 20, panjangSisi: 6, warna: "Merah")
