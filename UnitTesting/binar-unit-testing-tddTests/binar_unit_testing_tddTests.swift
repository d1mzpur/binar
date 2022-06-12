//
//  binar_unit_testing_tddTests.swift
//  binar-unit-testing-tddTests
//
//  Created by Arie May Wibowo on 04/12/21.
//

import XCTest
@testable import binar_unit_testing_tdd

class binar_unit_testing_tddTests: XCTestCase {

    private let viewController = ViewController()
    
    // contoh
    func testSigmoid() {
        let sigmoid = viewController.sigmoid(z: 2.0)
        XCTAssertEqual(sigmoid, 0.8807970779778823)
    }
    
    // buatlah test untuk fungsi concateMyName()
    func testConcateMyName(){
        let res = viewController.concateMyName(firstName: "dimas", lastName: "purnomo")
        XCTAssertEqual(res,"dimas purnomo")
    }
    
    
    
    /*
     Buatlah test TDD diikuti dengan pembuatan fungsi baru di ViewController dengan kriteria fungsi sebagai berikut:
     1. Fungsi pertama: fungsi menghitung rata-rata umur pegawai marketing dengan data sebagai berikut: 25, 33, 31, 24
     2. Fungsi kedua: fungsi menggabungkan nama dan tahun kelahiran untuk membuat password baru. Contoh: asep + 1966 menjadi asep1966
     Tulis unittest untuk TDD di line kosong di bawah ini
     */
    
    
    func testAverage_withArray252627282930(){
        let testAge: [Int] = [25, 26, 27, 28, 29]
        let res = viewController.average(age: testAge)
        XCTAssertEqual(res,27)
    }
    
    func testconcatePassword_withdimasand2021(){
        let res = viewController.concatePassword(name: "dimas", birthOfYear: 2021)
        XCTAssertEqual(res,"dimas2021")
    }

}
