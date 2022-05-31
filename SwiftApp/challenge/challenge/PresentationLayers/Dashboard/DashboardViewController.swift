//
//  DashboardViewController.swift
//  challenge
//
//  Created by Dimas Purnomo on 31/05/22.
//

import UIKit

enum Challenge: String, CaseIterable {
    case AnimalListV1Mentor
    case AnimalListV2Mentor
    case CalculatorImageCourse
    
    static var sorted: [Challenge] {
        Challenge.allCases.sorted { $0.rawValue < $1.rawValue }
    }
    
    var name: String {
        var res: String = ""
        var secondWordIndex: Int = 0
        for (index, char) in rawValue.enumerated() {
            secondWordIndex = index
            if char.isUppercase && secondWordIndex != 0 {
                res += " \(char)"
            } else {
                res += String(char)
            }
        }
        return res
    }
}

class DashboardViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var selectedChallenge: Challenge?
    
    var displayedChallenge: [Challenge] = Challenge.sorted
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }

}

extension DashboardViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let studentCount: Int = displayedChallenge.count
        return studentCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChallengeTableCell", for: indexPath)
        
        let row: Int = indexPath.row
        let student: Challenge = displayedChallenge[row]
        cell.textLabel?.text = student.name
        
        return cell
    }
    
}


