//
//  SimulationViewController.swift
//  theMontyHallProblem
//
//  Created by Valentin Dyrda on 15.11.2022.
//

import UIKit
import Foundation

let simulateBtn = DoorButton(title: "Simulate", color: .systemTeal)
let descriptionlbl = StatLabel(
    name: "The simulation will run 100 times, then it will tell you the amount of wins you would have had if chose to stay and amount of victories if you chose to switch",
    color: .systemBackground)

var winOriginal = 0
var winChange = 0
class SimulationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        setButtons()
    }
    
    
    func setButtons() {
        simulateBtn.addTarget(self, action: #selector(simulateButtonPressed), for: .touchUpInside)
        view.addSubview(simulateBtn)
        view.addSubview(descriptionlbl)
        
        NSLayoutConstraint.activate([
            descriptionlbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            descriptionlbl.heightAnchor.constraint(equalToConstant: 200),
            descriptionlbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            descriptionlbl.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            
            simulateBtn.topAnchor.constraint(equalTo: descriptionlbl.bottomAnchor, constant: 50),
            simulateBtn.heightAnchor.constraint(equalToConstant: 50),
            simulateBtn.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            simulateBtn.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50)
        ])
        
        
    }
    
    @objc func simulateButtonPressed() {
        winChange = 0
        winOriginal = 0
        for i in 1...100{
            simulationMHP()
        }
        winslbl.text = "\(winOriginal)"
        secondWinslbl.text = "\(winChange)"
        present(SimulationStatsViewController(), animated: true, completion: nil)
    }
    
    
    func simulationMHP() {
        let prizeNum = Int.random(in: 1...3)
        let chosenNum = Int.random(in: 1...3)
        var openNum = 0
        var changeMind = 0
        repeat {
            openNum = Int.random(in: 1...3)
        } while openNum == prizeNum || openNum == chosenNum
        
        repeat{
            changeMind = Int.random(in: 1...3)
        } while changeMind == openNum || changeMind == chosenNum
        
        if chosenNum == prizeNum {
            winOriginal += 1
        } else {
            winChange += 1
        }
        
    }
    
}
