//
//  StatsVC.swift
//  theMontyHallProblem
//
//  Created by Valentin Dyrda on 26.10.2022.
//

import UIKit

let totalWinslbl = StatLabel(name: "Total wins:", color: .systemGreen)
var wins = StatLabel(name: "\(victories)", color: .systemGreen)
let winPercentage = StatLabel(name: "Win percentage", color: .systemGreen)
var percentageOfWins = StatLabel(name: "\(victories/gamesPlayed * 100) %", color: .systemGreen)
let winsSwitch = StatLabel(name: "Wins when Switched", color: .systemGreen)
var switchWins = StatLabel(name: "\(victoriesSwitch)", color: .systemGreen)
var switchWinPercentage = StatLabel(name: "\(winSwitchPercentage * 100) %", color: .systemGreen)
let winsStay = StatLabel(name: "Wins when stayed", color: .systemGreen)
var stayWins = StatLabel(name: "\(victoriesStay)", color: .systemGreen)
var stayWinsPercentage = StatLabel(name: "\(winStayPercentage * 100) %", color: .systemGreen)

var totalLosses = StatLabel(name: "Total losses", color: .systemRed)
var losseslbl = StatLabel(name: "\(losses)", color: .systemRed)
var losspercentage = StatLabel(name: "Loose percentage", color: .systemRed)
var percentageOfLosses = StatLabel(name: "\(losses/gamesPlayed * 100) %", color: .systemRed)
var lossesSwitchlbl = StatLabel(name: "Losses Switch", color: .systemRed)
var switchLosseslbl = StatLabel(name: "\(lossesSwitch)", color: .systemRed)
var switchLossesPercentage = StatLabel(name: "\(lossSwitchPercentage * 100) %", color: .systemRed)
var lossesStaylbl = StatLabel(name: "Losses stay", color: .systemRed)
var stayLosseslbl = StatLabel(name: "\(lossesStay)", color: .systemRed)
var lossessStayPercentage = StatLabel(name: "\(lossStayPercentage * 100) %", color: .systemRed)








class StatsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        layoutLabels()
    }
    
    func layoutLabels() {
        view.addSubview(totalWinslbl)
        NSLayoutConstraint.activate([
            totalWinslbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            totalWinslbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            totalWinslbl.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: 7),
            totalWinslbl.heightAnchor.constraint(equalToConstant: 50),
        ])
        
        view.addSubview(wins)
        NSLayoutConstraint.activate([
            wins.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            wins.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: -7),
            wins.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            wins.heightAnchor.constraint(equalToConstant: 50),
        ])
        
        view.addSubview(winPercentage)
        NSLayoutConstraint.activate([
            winPercentage.topAnchor.constraint(equalTo: totalWinslbl.bottomAnchor, constant: 10),
            winPercentage.heightAnchor.constraint(equalToConstant: 50),
            winPercentage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            winPercentage.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: 7)
        ])
        
        view.addSubview(percentageOfWins)
        NSLayoutConstraint.activate([
            percentageOfWins.topAnchor.constraint(equalTo: wins.bottomAnchor, constant: 10),
            percentageOfWins.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: -7),
            percentageOfWins.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            percentageOfWins.heightAnchor.constraint(equalToConstant: 50),
        ])
        
        view.addSubview(winsSwitch)
        NSLayoutConstraint.activate([
            winsSwitch.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            winsSwitch.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -5),
            winsSwitch.topAnchor.constraint(equalTo: winPercentage.bottomAnchor, constant: 20),
            winsSwitch.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        view.addSubview(switchWins)
        NSLayoutConstraint.activate([
            switchWins.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            switchWins.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -5),
            switchWins.topAnchor.constraint(equalTo: winsSwitch.bottomAnchor, constant: 10),
            switchWins.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        view.addSubview(switchWinPercentage)
        NSLayoutConstraint.activate([
            switchWinPercentage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            switchWinPercentage.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -5),
            switchWinPercentage.topAnchor.constraint(equalTo: switchWins.bottomAnchor, constant: 10),
            switchWinPercentage.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        view.addSubview(winsStay)
        NSLayoutConstraint.activate([
            winsStay.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 5),
            winsStay.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            winsStay.heightAnchor.constraint(equalToConstant: 50),
            winsStay.topAnchor.constraint(equalTo: percentageOfWins.bottomAnchor, constant: 20)
        ])
        
        view.addSubview(stayWins)
        NSLayoutConstraint.activate([
            stayWins.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 5),
            stayWins.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            stayWins.heightAnchor.constraint(equalToConstant: 50),
            stayWins.topAnchor.constraint(equalTo: winsStay.bottomAnchor, constant: 10)
        ])
        
        view.addSubview(stayWinsPercentage)
        NSLayoutConstraint.activate([
            stayWinsPercentage.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 5),
            stayWinsPercentage.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            stayWinsPercentage.heightAnchor.constraint(equalToConstant: 50),
            stayWinsPercentage.topAnchor.constraint(equalTo: stayWins.bottomAnchor, constant: 10)
        ])
        
        view.addSubview(totalLosses)
        NSLayoutConstraint.activate([
            totalLosses.topAnchor.constraint(equalTo: switchWinPercentage.bottomAnchor, constant: 25),
            totalLosses.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            totalLosses.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: 7),
            totalLosses.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        view.addSubview(losseslbl)
        NSLayoutConstraint.activate([
            losseslbl.topAnchor.constraint(equalTo: switchWinPercentage.bottomAnchor, constant: 25),
            losseslbl.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: -7),
            losseslbl.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            losseslbl.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        view.addSubview(losspercentage)
        NSLayoutConstraint.activate([
            losspercentage.topAnchor.constraint(equalTo: totalLosses.bottomAnchor, constant: 10),
            losspercentage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            losspercentage.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: 7),
            losspercentage.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        view.addSubview(percentageOfLosses)
        NSLayoutConstraint.activate([
            percentageOfLosses.topAnchor.constraint(equalTo: totalLosses.bottomAnchor, constant: 10),
            percentageOfLosses.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: -7),
            percentageOfLosses.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            percentageOfLosses.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        view.addSubview(lossesSwitchlbl)
        NSLayoutConstraint.activate([
            lossesSwitchlbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            lossesSwitchlbl.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -5),
            lossesSwitchlbl.topAnchor.constraint(equalTo: losspercentage.bottomAnchor, constant: 20),
            lossesSwitchlbl.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        view.addSubview(switchLosseslbl)
        NSLayoutConstraint.activate([
            switchLosseslbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            switchLosseslbl.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -5),
            switchLosseslbl.topAnchor.constraint(equalTo: lossesSwitchlbl.bottomAnchor, constant: 10),
            switchLosseslbl.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        view.addSubview(switchLossesPercentage)
        NSLayoutConstraint.activate([
            switchLossesPercentage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            switchLossesPercentage.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -5),
            switchLossesPercentage.topAnchor.constraint(equalTo: switchLosseslbl.bottomAnchor, constant: 10),
            switchLossesPercentage.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        view.addSubview(lossesStaylbl)
        NSLayoutConstraint.activate([
            lossesStaylbl.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 5),
            lossesStaylbl.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            lossesStaylbl.heightAnchor.constraint(equalToConstant: 50),
            lossesStaylbl.topAnchor.constraint(equalTo: percentageOfLosses.bottomAnchor, constant: 20)
        ])
        
        view.addSubview(stayLosseslbl)
        NSLayoutConstraint.activate([
            stayLosseslbl.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 5),
            stayLosseslbl.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            stayLosseslbl.heightAnchor.constraint(equalToConstant: 50),
            stayLosseslbl.topAnchor.constraint(equalTo: lossesStaylbl.bottomAnchor, constant: 10)
        ])
        
        view.addSubview(lossessStayPercentage)
        NSLayoutConstraint.activate([
            lossessStayPercentage.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 5),
            lossessStayPercentage.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            lossessStayPercentage.heightAnchor.constraint(equalToConstant: 50),
            lossessStayPercentage.topAnchor.constraint(equalTo: stayLosseslbl.bottomAnchor, constant: 10)
        ])
    }
    
}
