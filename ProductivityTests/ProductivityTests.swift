//
//  ProductivityTests.swift
//  ProductivityTests
//
//  Created by Javier Fernandes on 10/11/2023.
//

import XCTest
@testable import ProductivityTest

final class ProductivityTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        XCTAssertEqual(AppConfig.shared.stringValue(forKey: "EnvironmentName"), "Test")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
