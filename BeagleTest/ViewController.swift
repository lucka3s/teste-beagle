//
//  ViewController.swift
//  BeagleTest
//
//  Created by Zup IT on 28/01/20.
//  Copyright © 2020 Zup IT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var service = APIService()
    private var renderer = Renderer()

    override func viewDidLoad() {
        super.viewDidLoad()

        service.getHomeScreen(completion: { widget in
            self.render(widget: widget)
        })
    }

    func render(widget: [AnyHashable: Any]) {
        let view = renderer.render(widget: widget)
        self.view.addSubview(view)
        view.attachToAllSides(of: self.view, margin: 12)
    }
}
