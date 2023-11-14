//
//  ProductivityApp.swift
//  Productivity
//
//  Created by Javier Fernandes on 10/11/2023.
//

import SwiftUI

@main
struct ProductivityApp: App {

    init() {
        _ = AppConfig.shared.stringValue(forKey: "EnvironmentName")
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }

}
