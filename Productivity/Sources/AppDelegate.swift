//
//  AppDelegate.swift
//  Productivity
//
//  Created by Javier Fernandes on 14/11/2023.
//

import Foundation
import Mixpanel
import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        if let mixpanelToken = AppConfig.shared.stringValue(forKey: "MixpanelProjectToken") {
            Mixpanel.initialize(token: mixpanelToken, trackAutomaticEvents: true)
        }

        return true
    }

}