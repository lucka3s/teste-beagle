//
//  Renderer.swift
//  BeagleTest
//
//  Created by Lucas Sousa Silva on 17/02/20.
//  Copyright © 2020 Zup IT. All rights reserved.
//

import UIKit

class Renderer: NSObject {
    
    var rootItem: BeagleView?
    
    enum ViewType: String {
        
        case button = "BUTTON"
        case text = "TEXT"
        case input = "INPUT"
        case image = "IMAGE"
        case container = "CONTAINER"
        
        static func beagleView(widget: [AnyHashable: Any]) -> BeagleView? {
            
            guard let typeString = widget["_type_"] as? String, let type = ViewType(rawValue: typeString) else {
                return nil
            }
            let text = widget["text"] as? String ?? ""
            
            switch type {
            case .button:
                return Button(text: text)
            case .text:
                return Text(text: text)
            case .input:
                let value = widget["value"] as? String ?? ""
                return Input(text: text, value: value)
            case .image:
                let url = widget["value"] as? String ?? ""
                return Image(url: url)
            case .container:
                return containerView(widget: widget)
            }
        }
        
        static func containerView(widget: [AnyHashable: Any]) -> BeagleView {
            var children = [BeagleView]()
            let widgetOrientation = widget["orientation"] as? String
            let orientation: Container.Orientation = widgetOrientation == "H" ? .horizontal : .vertical
            if let widgetChildren = widget["children"] as? [[AnyHashable: Any]] {
                for child in widgetChildren {
                    if let beagleView = beagleView(widget: child) {
                        children.append(beagleView)
                    }
                }
            }
            return Container(children: children, orientation: orientation)
        }
    }
    
    func render(widget: [AnyHashable: Any]) -> UIView {
        rootItem = ViewType.beagleView(widget: widget)
        return rootItem?.view() ?? UIView()
    }

}
