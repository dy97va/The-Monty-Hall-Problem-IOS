//
//  ViewController.swift
//  theMontyHallProblem
//
//  Created by Valentin Dyrda on 23.10.2022.
//

import UIKit

var number = Int.random(in: 1...3)

class MainViewController: UIViewController {
    
    let label: UILabel = {
        var num = number
        let label = UILabel()
        label.backgroundColor = .white
        label.text = "\(num)"
        return label
    }()
    
    let button1: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 10
        button.backgroundColor = .darkGray
        button.setTitle("1", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.black, for: .selected)
        button.addTarget(self, action: #selector(button1Pressed), for: .touchUpInside)
        return button
    }()
    
    let button2: UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.setTitle("2", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.black, for: .selected)
        button.addTarget(self, action: #selector(button2Pressed), for: .touchUpInside)
        return button
    }()
    
    let button3: UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.setTitle("3", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.black, for: .selected)
        button.addTarget(self, action: #selector(button3Pressed), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40).isActive = true
        label.widthAnchor.constraint(equalToConstant: 300).isActive = true
        label.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        
        view.addSubview(button1)
        button1.frame = CGRect(x: 10, y: 300, width: 30, height: 30)
        view.addSubview(button2)
        button2.frame = CGRect(x: 50, y: 300, width: 30, height: 30)
        view.addSubview(button3)
        button3.frame = CGRect(x: 90, y: 300, width: 30, height: 30)
    }
 
    @objc func button1Pressed() {
        
        return
    }
    @objc func button2Pressed() {
        return
    }
    
    @objc func button3Pressed() {
        return
    }
    
    func numberRandomizer() {
        number = Int.random(in: 1...3)
    }
    
}
