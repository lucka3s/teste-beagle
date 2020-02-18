//
//  APIService.swift
//  BeagleTest
//
//  Created by Zup IT on 28/01/20.
//  Copyright © 2020 Zup IT. All rights reserved.
//

import UIKit

class APIService: NSObject {
    func getHomeScreen(completion: @escaping ([AnyHashable: Any]) -> Void) {
        guard let path = Bundle.main.path(forResource: "HomeScreen", ofType: "plist") else { return }
        guard let result = FileManager.default.contents(atPath: path) else { return }
        let screenPayload = (try? PropertyListSerialization.propertyList(from: result, options: [], format: nil)) as? [AnyHashable: Any]
        completion(screenPayload ?? [:])
    }
}
