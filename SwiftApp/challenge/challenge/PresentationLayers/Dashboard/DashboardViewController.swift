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

class DashboardViewController: UIViewController, StoryboardInstantiable {
    
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
        let courseCount: Int = displayedChallenge.count
        return courseCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChallengeTableCell", for: indexPath)
        
        let row: Int = indexPath.row
        let student: Challenge = displayedChallenge[row]
        cell.textLabel?.text = student.name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row: Int = indexPath.row // selected row
        let selectedChallenge = displayedChallenge[row] // get Student from sorted at number of row
        switch selectedChallenge {
        
        case .AnimalListV1Mentor:
            let storyboard = UIStoryboard(name: "ALFMain", bundle: nil)
            guard let viewController = storyboard.instantiateViewController(withIdentifier: "ALFViewController") as? ALFViewController else { return }
            open(viewController)
            
        default:
            break
        }
    }
    
    private func open(_ viewController: UIViewController) {
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    
}
