//
//  ViewController.swift
//  binar-unit-testing-tdd
//
//  Created by Arie May Wibowo on 04/12/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func sigmoid(z: Double) -> Double {
        return 1.0 / (1.0 + exp(-z))
    }
    
    
    // buatlah test dari fungsi di bawah
    func concateMyName(firstName: String, lastName: String) -> String {
        let name = "\(firstName) \(lastName)"
        return name
    }
    
    //buatlah fungsi baru dengan mnggunakan konsep TDD
    func average(age: [Int]) -> Float {
            var res: Float = 0
            for i in age {
                res += Float(i)
            }
            res = res / Float(age.count)
            return res
        }
        
    func concatePassword(name: String, birthOfYear: Int) -> String {
        let password = "\(name)\(birthOfYear)"
        return password
    }

}

