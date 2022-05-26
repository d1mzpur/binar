//
//  ViewController.swift
//  challenge
//
//  Created by Dimas Purnomo on 26/05/22.
//

import UIKit

enum Challenge: String, CaseIterable, TitleEnum {
    case Challenge4Course
    
    static var sorted: [Challenge] {
        Challenge.allCases.sorted {
            $0.rawTitle < $1.rawTitle
        }.map { $0 }
    }
}

class ViewController: UIViewController, StoryboardInstantiable {

    private let name: String
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    init(name: String) {
        self.name = "Challenge BinarCourse"
        super.init(nibName: nil, bundle: nil)
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.registerCell(UITableViewCell.self)
    }
        
    // MARK: TableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let numberOfChallenge: Int = Challenge.sorted.count
        return numberOfChallenge
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell: UITableViewCell = tableView.dequeueReusableCell(
            withIdentifier: "UITableViewCell",
            for: indexPath
        )
            
        let row: Int = indexPath.row
        let titleChallenge: String = Challenge.sorted[row].rawTitle
        cell.textLabel?.text = titleChallenge
            
        return cell
    }
        
        // MARK: TableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row: Int = indexPath.row
        let challenge: Challenge = Challenge.sorted[row]
        switch challenge {
        case .Challenge4Course:
//          open(ARChallenge4ViewController())
            break
        }
    }
        
    func open(_ viewController: UIViewController) {
        navigationController?.pushViewController(viewController, animated: true)
    }
}
