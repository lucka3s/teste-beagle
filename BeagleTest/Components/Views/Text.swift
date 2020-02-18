//
//  Text.swift
//  BeagleTest
//
//  Created by Lucas Sousa Silva on 17/02/20.
//  Copyright © 2020 Zup IT. All rights reserved.
//

import UIKit

class Text: BeagleView {

    let text: String
    
    init(text: String) {
        self.text = text
    }
    
    func view() -> UIView {
        let label = UILabel()
        label.text = text
        return label
    }
}
