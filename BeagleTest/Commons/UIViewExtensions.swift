//
//  UIViewExtensions.swift
//  BeagleTest
//
//  Created by Lucas Sousa Silva on 17/02/20.
//  Copyright © 2020 Zup IT. All rights reserved.
//

import UIKit

extension UIView {
    
    func attachToAllSides(of view: UIView, margin: CGFloat = 0) {
        translatesAutoresizingMaskIntoConstraints = false
        leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: margin).isActive = true
        topAnchor.constraint(equalTo: view.topAnchor, constant: margin).isActive = true
        bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: margin).isActive = true
    }

    func center(in view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
}
