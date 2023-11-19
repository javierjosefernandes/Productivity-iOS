//
//  AppDelegate.swift
//  Productivity
//
//  Created by Javier Fernandes on 14/11/2023.
//

import Amplify
import FlagsmithClient
import Foundation
import Mixpanel
import Sentry
import UIKit

final class AppDelegate: NSObject, UIApplicationDelegate {

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        if let mixpanelToken = AppConfig.shared.stringValue(forKey: "MixpanelProjectToken") {
            Mixpanel.initialize(token: mixpanelToken, trackAutomaticEvents: true)
        }

        let sentryDNS = AppConfig.shared.stringValue(forKey: "SentryDNS")
        let sentryEnv = AppConfig.shared.stringValue(forKey: "SentryEnvironment")
        if let sentryDNS, let sentryEnv {
            SentrySDK.start { options in
                options.dsn = sentryDNS
                options.environment = sentryEnv
                options.debug = sentryEnv == "development"
                options.enableTracing = sentryEnv == "production"
            }
        }

        if let flagsmithEnvKey = AppConfig.shared.stringValue(forKey: "FlagsmithEnvironmentKey") {
            Flagsmith.shared.apiKey = flagsmithEnvKey

            Flagsmith.shared.getFeatureFlags { result in
                switch result {
                case .success(let flags):
                    for flag in flags {
                        let name = flag.feature.name
                        let value = flag.value
                        let enabled = flag.enabled
                        print(name, "= enabled:", enabled, "value:", value)
                    }

                case .failure(let error):
                    print(error)
                }
            }
        }

        return true
    }

}
