// Generated using Sourcery 2.1.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable line_length
// swiftlint:disable variable_name

import Foundation
#if os(iOS) || os(tvOS) || os(watchOS)
import UIKit
#elseif os(OSX)
import AppKit
#endif
























class AppConfigurableMock: AppConfigurable {




    //MARK: - stringValue

    var stringValueForKeyCallsCount = 0
    var stringValueForKeyCalled: Bool {
        return stringValueForKeyCallsCount > 0
    }
    var stringValueForKeyReceivedKey: (String)?
    var stringValueForKeyReceivedInvocations: [(String)] = []
    var stringValueForKeyReturnValue: String?
    var stringValueForKeyClosure: ((String) -> String?)?

    func stringValue(forKey key: String) -> String? {
        stringValueForKeyCallsCount += 1
        stringValueForKeyReceivedKey = key
        stringValueForKeyReceivedInvocations.append(key)
        if let stringValueForKeyClosure = stringValueForKeyClosure {
            return stringValueForKeyClosure(key)
        } else {
            return stringValueForKeyReturnValue
        }
    }

    //MARK: - intValue

    var intValueForKeyCallsCount = 0
    var intValueForKeyCalled: Bool {
        return intValueForKeyCallsCount > 0
    }
    var intValueForKeyReceivedKey: (String)?
    var intValueForKeyReceivedInvocations: [(String)] = []
    var intValueForKeyReturnValue: Int?
    var intValueForKeyClosure: ((String) -> Int?)?

    func intValue(forKey key: String) -> Int? {
        intValueForKeyCallsCount += 1
        intValueForKeyReceivedKey = key
        intValueForKeyReceivedInvocations.append(key)
        if let intValueForKeyClosure = intValueForKeyClosure {
            return intValueForKeyClosure(key)
        } else {
            return intValueForKeyReturnValue
        }
    }

    //MARK: - boolValue

    var boolValueForKeyCallsCount = 0
    var boolValueForKeyCalled: Bool {
        return boolValueForKeyCallsCount > 0
    }
    var boolValueForKeyReceivedKey: (String)?
    var boolValueForKeyReceivedInvocations: [(String)] = []
    var boolValueForKeyReturnValue: Bool?
    var boolValueForKeyClosure: ((String) -> Bool?)?

    func boolValue(forKey key: String) -> Bool? {
        boolValueForKeyCallsCount += 1
        boolValueForKeyReceivedKey = key
        boolValueForKeyReceivedInvocations.append(key)
        if let boolValueForKeyClosure = boolValueForKeyClosure {
            return boolValueForKeyClosure(key)
        } else {
            return boolValueForKeyReturnValue
        }
    }

}
