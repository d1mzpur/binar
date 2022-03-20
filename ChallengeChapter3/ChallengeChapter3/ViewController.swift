//
//  ViewController.swift
//  ChallengeChapter3
//
//  Created by Dimas Purnomo on 20/03/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var valueA: UITextField!
    @IBOutlet weak var valueB: UITextField!
    
    @IBOutlet weak var images: UIImageView!
    @IBOutlet weak var resultValue: UILabel!
    
    @IBAction func clickResult(_ sender: Any) {
        let valueA = Int(valueA.text!) ?? 0
        let valueB = Int(valueB.text!) ?? 0
        let result = valueA + valueB
        resultValue.text = String(result)
        
        let img1 = UIImage(systemName: "book.fill")
        let img2 = UIImage(systemName: "pencil")
        let img3 = UIImage(systemName: "calendar")
        let randomImage = [img1, img2, img3]

        images.image = randomImage.randomElement()!!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        valueA.keyboardType = .numberPad
        valueB.keyboardType = .numberPad
    }

    

}

