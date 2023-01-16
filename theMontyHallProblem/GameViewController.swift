//
//  ViewController.swift
//  theMontyHallProblem
//
//  Created by Valentin Dyrda on 23.10.2022.
//

import UIKit

let switchButton = GameButton(title: "Switch", color: .darkGray)
let stayButton = GameButton(title: "Stay", color: .darkGray)
let button1 = DoorButton(title: "Card 1", color: .lightGray)
let button2 = DoorButton(title: "Card 2", color: .lightGray)
let button3 = DoorButton(title: "Card 3", color: .lightGray)
let newGameButton = GameButton(title: "New Game", color: .systemGreen)

var prizeNumber = 0
var chosenNumber = 0
var revealNumber = 0
var changeMind = 0

var gamesPlayed:Float = 0
var switchGamesPlayed:Float = 0
var stayGamesPlayed:Float = 0

var victories:Float = 0
var victoriesSwitch:Float = 0
var victoriesStay:Float = 0

var losses:Float = 0
var lossesSwitch:Float = 0
var lossesStay:Float = 0

var winStayPercentage:Float = 0
var winSwitchPercentage:Float = 0
var lossStayPercentage:Float = 0
var lossSwitchPercentage:Float = 0

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        playRound()
    }
    
    func createButtons() {
        
        button1.addTarget(self, action: #selector(button1Pressed), for: .touchUpInside)
        button2.addTarget(self, action: #selector(button2Pressed), for: .touchUpInside)
        button3.addTarget(self, action: #selector(button3Pressed), for: .touchUpInside)
        newGameButton.addTarget(self, action: #selector(newGame), for: .touchUpInside)
        stayButton.addTarget(self, action: #selector(stayButtonPressed), for: .touchUpInside)
        switchButton.addTarget(self, action: #selector(switchButtonPressed), for: .touchUpInside)
        
        view.addSubview(switchButton)
        switchButton.translatesAutoresizingMaskIntoConstraints = false
        switchButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        switchButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        switchButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50).isActive = true
        switchButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: -25).isActive = true
        
        view.addSubview(stayButton)
        stayButton.translatesAutoresizingMaskIntoConstraints = false
        stayButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        stayButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        stayButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 25).isActive = true
        stayButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50).isActive = true
        
        view.addSubview(button1)
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150).isActive = true
        button1.heightAnchor.constraint(equalToConstant: 100).isActive = true
        button1.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50).isActive = true
        button1.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50).isActive = true
        
        view.addSubview(button2)
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 50).isActive = true
        button2.heightAnchor.constraint(equalToConstant: 100).isActive = true
        button2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50).isActive = true
        button2.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50).isActive = true
        
        view.addSubview(button3)
        button3.translatesAutoresizingMaskIntoConstraints = false
        button3.topAnchor.constraint(equalTo: button2.bottomAnchor, constant: 50).isActive = true
        button3.heightAnchor.constraint(equalToConstant: 100).isActive = true
        button3.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50).isActive = true
        button3.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50).isActive = true
        
        view.addSubview(newGameButton)
        newGameButton.translatesAutoresizingMaskIntoConstraints = false
        newGameButton.topAnchor.constraint(equalTo: button3.bottomAnchor, constant: 30).isActive = true
        newGameButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        newGameButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        newGameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc func switchButtonPressed() {
        switchGamesPlayed += 1
        repeat {
            changeMind = Int.random(in: 1...3)
        } while changeMind == chosenNumber || changeMind == revealNumber
        chosenNumber = changeMind
        print("prize number is", prizeNumber, "chosen number is now ", changeMind )
        if chosenNumber == prizeNumber {
            victories = victories + 1
            victoriesSwitch += 1
            print("Victory")
            if chosenNumber == 1{
                button1.isSelected = true
                button2.isSelected = false
                button3.isSelected = false
                button1.configuration?.baseBackgroundColor = .green
                button2.configuration?.baseBackgroundColor = .red
                button3.configuration?.baseBackgroundColor = .red
            } else if chosenNumber == 2 {
                button1.isSelected = false
                button2.isSelected = true
                button3.isSelected = false
                button1.configuration?.baseBackgroundColor = .red
                button2.configuration?.baseBackgroundColor = .green
                button3.configuration?.baseBackgroundColor = .red
            } else {
                button1.isSelected = false
                button2.isSelected = false
                button3.isSelected = true
                button1.configuration?.baseBackgroundColor = .red
                button2.configuration?.baseBackgroundColor = .red
                button3.configuration?.baseBackgroundColor = .green
            }
        } else {
            losses += 1
            lossesSwitch += 1
            
            if prizeNumber == 1 {
                button1.configuration?.baseBackgroundColor = .green
                button2.configuration?.baseBackgroundColor = .red
                button3.configuration?.baseBackgroundColor = .red
            } else if prizeNumber == 2 {
                button1.configuration?.baseBackgroundColor = .red
                button2.configuration?.baseBackgroundColor = .green
                button3.configuration?.baseBackgroundColor = .red
            } else {
                button1.configuration?.baseBackgroundColor = .red
                button2.configuration?.baseBackgroundColor = .red
                button3.configuration?.baseBackgroundColor = .green
            }
            
            if chosenNumber == 1{
                button1.isSelected = true
                button2.isSelected = false
                button3.isSelected = false
            } else if chosenNumber == 2 {
                button1.isSelected = false
                button2.isSelected = true
                button3.isSelected = false
                button2.configuration?.baseBackgroundColor = .red
            } else {
                button1.isSelected = false
                button2.isSelected = false
                button3.isSelected = true
                button3.configuration?.baseBackgroundColor = .red
            }
        }
        winSwitchPercentage = victoriesSwitch/switchGamesPlayed
        lossSwitchPercentage = lossesSwitch/switchGamesPlayed
        
        wins.text = "\(victories)"
        percentageOfWins.text = "\(victories/gamesPlayed * 100) %"
        losseslbl.text = "\(losses)"
        percentageOfLosses.text = "\(losses/gamesPlayed * 100) %"
        
        switchWins.text = "\(victoriesSwitch)"
        switchWinPercentage.text = "\(winSwitchPercentage * 100) %"
        switchLosseslbl.text = "\(lossesSwitch)"
        switchLossesPercentage.text = "\(lossSwitchPercentage * 100) %"
        
        switchButton.isUserInteractionEnabled = false
        stayButton.isUserInteractionEnabled = false
        newGameButton.isHidden = false
        return
    }
    
    @objc func stayButtonPressed() {
        stayGamesPlayed += 1
        print("Chosen number is ", chosenNumber, "Prize number is ", prizeNumber)
        if chosenNumber == prizeNumber {
            victories += 1
            victoriesStay += 1
            if chosenNumber == 1{
                button1.isSelected = true
                button2.isSelected = false
                button3.isSelected = false
                button1.configuration?.baseBackgroundColor = .green
                button2.configuration?.baseBackgroundColor = .red
                button3.configuration?.baseBackgroundColor = .red
            } else if chosenNumber == 2 {
                button1.isSelected = false
                button2.isSelected = true
                button3.isSelected = false
                button2.configuration?.baseBackgroundColor = .green
                button1.configuration?.baseBackgroundColor = .red
                button3.configuration?.baseBackgroundColor = .red
            } else {
                button1.isSelected = false
                button2.isSelected = false
                button3.isSelected = true
                button3.configuration?.baseBackgroundColor = .green
                button1.configuration?.baseBackgroundColor = .red
                button2.configuration?.baseBackgroundColor = .red
            }
        } else {
            losses += 1
            lossesStay += 1
            if chosenNumber == 1{
                button1.isSelected = true
                button2.isSelected = false
                button3.isSelected = false
                button1.configuration?.baseBackgroundColor = .red
            } else if chosenNumber == 2 {
                button1.isSelected = false
                button2.isSelected = true
                button3.isSelected = false
                button2.configuration?.baseBackgroundColor = .red
            } else {
                button1.isSelected = false
                button2.isSelected = false
                button3.isSelected = true
                button3.configuration?.baseBackgroundColor = .red
            }
        }
        
        if prizeNumber == 1{
            button1.configuration?.baseBackgroundColor = .green
            button2.configuration?.baseBackgroundColor = .red
            button3.configuration?.baseBackgroundColor = .red
        } else if prizeNumber == 2 {
            button1.configuration?.baseBackgroundColor = .red
            button2.configuration?.baseBackgroundColor = .green
            button3.configuration?.baseBackgroundColor = .red
        } else {
            button1.configuration?.baseBackgroundColor = .red
            button2.configuration?.baseBackgroundColor = .red
            button3.configuration?.baseBackgroundColor = .green
        }
        winStayPercentage = victoriesStay/stayGamesPlayed
        lossStayPercentage = lossesStay/stayGamesPlayed
        
        wins.text = "\(victories)"
        percentageOfWins.text = "\(victories/gamesPlayed * 100) %"
        losseslbl.text = "\(losses)"
        percentageOfLosses.text = "\(losses/gamesPlayed * 100) %"
        
        stayWins.text = "\(victoriesStay)"
        stayWinsPercentage.text = "\(winStayPercentage * 100) %"
        stayLosseslbl.text = "\(lossesStay)"
        lossessStayPercentage.text = "\(lossStayPercentage * 100) %"
        
        switchButton.isUserInteractionEnabled = false
        stayButton.isUserInteractionEnabled = false
        newGameButton.isHidden = false
        return
    }
    
    @objc func newGame() {
        playRound()
        button1.isSelected = false
        button1.configuration?.baseBackgroundColor = .lightGray
        button1.isUserInteractionEnabled = true
        button2.isSelected = false
        button2.configuration?.baseBackgroundColor = .lightGray
        button2.isUserInteractionEnabled = true
        button3.isSelected = false
        button3.configuration?.baseBackgroundColor = .lightGray
        button3.isUserInteractionEnabled = true
        newGameButton.isHidden = true
        switchButton.isHidden = true
        stayButton.isHidden = true
        print(prizeNumber)
    }
    
    @objc func button1Pressed() {
        chosenNumber = 1
        button1.isSelected = true
        button1.configuration?.baseBackgroundColor = .yellow
        print("chosen number is ", chosenNumber)
        doorToOpen()
        button2.isUserInteractionEnabled = false
        button3.isUserInteractionEnabled = false
        switchButton.isHidden = false
        switchButton.isUserInteractionEnabled = true
        stayButton.isHidden = false
        stayButton.isUserInteractionEnabled = true
        return
    }
    
    @objc func button2Pressed() {
        chosenNumber = 2
        button2.isSelected = true
        button2.configuration?.baseBackgroundColor = .yellow
        print("chosen number is ", chosenNumber)
        doorToOpen()
        button1.isUserInteractionEnabled = false
        button3.isUserInteractionEnabled = false
        switchButton.isHidden = false
        switchButton.isUserInteractionEnabled = true
        stayButton.isHidden = false
        stayButton.isUserInteractionEnabled = true
        return
    }
    
    @objc func button3Pressed() {
        chosenNumber = 3
        button3.isSelected = true
        button3.configuration?.baseBackgroundColor = .yellow
        print("chosen number is ", chosenNumber)
        doorToOpen()
        button1.isUserInteractionEnabled = false
        button2.isUserInteractionEnabled = false
        switchButton.isHidden = false
        switchButton.isUserInteractionEnabled = true
        stayButton.isHidden = false
        stayButton.isUserInteractionEnabled = true
        return
    }
    
    func playRound(){
        gamesPlayed += 1
        prizeNumber = Int.random(in: 1...3)
        createButtons()
    }
}

func doorToOpen() {
    repeat {
        revealNumber = Int.random(in: 1...3)
        
    } while revealNumber == prizeNumber || revealNumber == chosenNumber
    print("reveal number is ", revealNumber)
    
    if revealNumber == 1 {
        button1.configuration?.baseBackgroundColor = .red
    } else if revealNumber == 2 {
        button2.configuration?.baseBackgroundColor = .red
    } else {
        button3.configuration?.baseBackgroundColor = .red
    }
}
