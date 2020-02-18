//
//  Input.swift
//  BeagleTest
//
//  Created by Lucas Sousa Silva on 17/02/20.
//  Copyright © 2020 Zup IT. All rights reserved.
//

import UIKit

class Input: BeagleView {

    let text: String
    let value: String
    var textField: UITextField?
    
    init(text: String, value: String) {
        self.text = text
        self.value = value
    }
    
    func view() -> UIView {
        textField = UITextField()
        textField?.text = text
        textField?.inputAccessoryView = self.inputAccessoryView()
        return textField!
    }
    
    func inputAccessoryView() -> UIView {
        let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 320, height: 44))
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let button = UIBarButtonItem(title: "OK", style: .plain, target: self, action: #selector(dismissKeyboard))
        toolbar.items = [spacer, button]
        return toolbar
    }
    
    @objc func dismissKeyboard() {
        textField?.resignFirstResponder()
    }
    
}

