//
//  Button.swift
//  BeagleTest
//
//  Created by Lucas Sousa Silva on 17/02/20.
//  Copyright © 2020 Zup IT. All rights reserved.
//

import UIKit

class Button: BeagleView {

    let text: String
    
    init(text: String) {
        self.text = text
    }
    
    func view() -> UIView {
        let button = UIButton()
        button.setTitle(text, for: .normal)
        return button
    }
}
