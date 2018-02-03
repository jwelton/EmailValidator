//
//  URLTests.swift
//  EmailValidator
//
//  Created by Jake Welton on 2/3/18.
//  Copyright © 2018 EmailValidator. All rights reserved.
//

import XCTest
@testable import EmailValidator

class URLTests: XCTestCase {
    func testURL_containsSchemeMailTo_withNoScheme_ReturnsFalse() {
        guard let url = URL(string: "blah") else {
            XCTFail("Failed to construct URL object")
            return
        }

        XCTAssertFalse(url.containsScheme(.mailto))
    }

    func testURL_containsSchemeMailTo_withHTTP_ReturnsFalse() {
        guard let url = URL(string: "http:www.google.co.uk") else {
            XCTFail("Failed to construct URL object")
            return
        }

        XCTAssertFalse(url.containsScheme(.mailto))
    }

    func testURL_containsSchemeMailTo_withMailTo_ReturnsTrue() {
        guard let url = URL(string: "mailto:test@example.com") else {
            XCTFail("Failed to construct URL object")
            return
        }

        XCTAssertTrue(url.containsScheme(.mailto))
    }
}
