//
//  DoorButton.swift
//  theMontyHallProblem
//
//  Created by Valentin Dyrda on 30.10.2022.
//

import UIKit

class DoorButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(title: String, color: UIColor) {
        super.init(frame: .zero)
        configuration = .tinted()
        configuration?.title = title
        configuration?.baseBackgroundColor = color
        configuration?.baseForegroundColor = .black
        translatesAutoresizingMaskIntoConstraints = false
        isUserInteractionEnabled = true
    }
}
