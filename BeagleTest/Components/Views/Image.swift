//
//  Image.swift
//  BeagleTest
//
//  Created by Lucas Sousa Silva on 17/02/20.
//  Copyright © 2020 Zup IT. All rights reserved.
//

import UIKit

class Image: BeagleView {

    let url: String
    
    init(url: String) {
        self.url = url
    }
    
    func view() -> UIView {
        let imageView = UIImageView()
        imageView.loadImage(from: url)
        return imageView
    }
}
