//
//  Container.swift
//  BeagleTest
//
//  Created by Lucas Sousa Silva on 17/02/20.
//  Copyright © 2020 Zup IT. All rights reserved.
//

import UIKit

class Container: BeagleView {
    
    let children: [BeagleView]
    let orientation: Orientation
    
    enum Orientation {
        case horizontal
        case vertical
    }
    
    required init(children: [BeagleView], orientation: Orientation) {
        self.children = children
        self.orientation = orientation
    }
    
    func view() -> UIView {
        let container = UIStackView()
        container.axis = Orientation.horizontal == orientation ? .horizontal : .vertical
        container.distribution = .fillEqually
        for child in children {
            container.addArrangedSubview(child.view())
        }
        return container
    }
}
