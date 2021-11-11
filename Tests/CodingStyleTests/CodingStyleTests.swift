//
//  CodingStyleTests.swift
//  CodingStyle
//
//  Created by Aksilont on 11.11.2021.
//

import XCTest
@testable import CodingStyle

final class CodingStyleTests: XCTestCase {

    @CodingStyle(.camelCase) var testValue = "SomeTest-go_darkMove-Travel get-rate"
    
    func testCodingStyle() throws {
        XCTAssertEqual(testValue, "SomeTestGoDarkMoveTravelGetRate")
        $testValue = .kebabCase
        XCTAssertEqual(testValue, "some-test-go-dark-move-travel-get-rate")
        $testValue = .snakeCase
        XCTAssertEqual(testValue, "some_test_go_dark_move_travel_get_rate")
    }
    
}
