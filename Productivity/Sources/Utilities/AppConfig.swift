//
//  Configuration.swift
//  Productivity
//
//  Created by Javier Fernandes on 10/11/2023.
//

import Foundation

// sourcery: AutoMockable
protocol AppConfigurable {

    func stringValue(forKey key: String) -> String?
    func intValue(forKey key: String) -> Int?
    func boolValue(forKey key: String) -> Bool?

}

final class AppConfig: AppConfigurable {

    static let shared = AppConfig()

    private var settings: [String: Any]?

    private init() {
        loadSettings()
    }

    private func loadSettings() {
        var resource: String?

        #if TEST_ENV
        resource = "ConfigTest"
        #elseif ACCEPTANCE_ENV
        resource = "ConfigAcceptance"
        #else
        resource = "ConfigProduction"
        #endif

        guard let resource = resource,
              let path = Bundle.main.path(forResource: resource, ofType: "plist"),
              let settingsDictionary = NSDictionary(contentsOfFile: path) as? [String: Any] else {
            fatalError("Unable to load the configuration plist file.")
        }

        settings = settingsDictionary
    }

    func value<T>(forKey key: String) -> T? {
        settings?[key] as? T
    }

    func stringValue(forKey key: String) -> String? {
        value(forKey: key)
    }

    func intValue(forKey key: String) -> Int? {
        value(forKey: key)
    }

    func boolValue(forKey key: String) -> Bool? {
        value(forKey: key)
    }

}
