//
//  StatLabel.swift
//  theMontyHallProblem
//
//  Created by Valentin Dyrda on 08.11.2022.
//

import UIKit

class StatLabel: UILabel {

    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    init(name: String, color: UIColor) {
        super.init(frame: .zero)
        backgroundColor = color
        text = name
        textAlignment = .center
        layer.masksToBounds = true
        layer.cornerRadius = 10
        numberOfLines = 0
        lineBreakMode = .byWordWrapping
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    

}
