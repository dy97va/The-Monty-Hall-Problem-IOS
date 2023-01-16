//
//  SimulationStatsViewController.swift
//  theMontyHallProblem
//
//  Created by Valentin Dyrda on 28.11.2022.
//

import UIKit

let winslbl = StatLabel(name: "\(winOriginal)" , color: .systemGreen)
let winsTxtLbl = StatLabel(name: "Wins if Stayed", color: .systemGreen)
let secondWinslbl = StatLabel(name: "\(winChange)", color: .systemGreen)
let secondWinsTxtLbl = StatLabel(name: "Wins if Switched", color: .systemGreen)

class SimulationStatsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setLabels()
    }
    
    func setLabels() {
        view.addSubview(winslbl)
        view.addSubview(secondWinslbl)
        view.addSubview(winsTxtLbl)
        view.addSubview(secondWinsTxtLbl)
        NSLayoutConstraint.activate([
            winsTxtLbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            winsTxtLbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            winsTxtLbl.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            winsTxtLbl.heightAnchor.constraint(equalToConstant: 50),
            
            winslbl.topAnchor.constraint(equalTo: winsTxtLbl.bottomAnchor, constant: 20),
            winslbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            winslbl.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            winslbl.heightAnchor.constraint(equalToConstant: 100),
            
            secondWinsTxtLbl.topAnchor.constraint(equalTo: winslbl.bottomAnchor, constant: 50),
            secondWinsTxtLbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            secondWinsTxtLbl.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            secondWinsTxtLbl.heightAnchor.constraint(equalToConstant: 50),
            
            secondWinslbl.topAnchor.constraint(equalTo: secondWinsTxtLbl.bottomAnchor, constant: 20),
            secondWinslbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            secondWinslbl.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            secondWinslbl.heightAnchor.constraint(equalToConstant: 100)
            
        ])
    }
}
