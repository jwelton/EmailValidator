//
//  EmailValidatorTests.swift
//  EmailValidator
//
//  Created by Jake Welton on 2/3/18.
//  Copyright © 2018 EmailValidator. All rights reserved.
//

import Foundation
import XCTest
import EmailValidator

class EmailValidatorTests: XCTestCase {
    private var validator: EmailValidator!

    override func setUp() {
        validator = EmailValidator()
    }

    func testEmailValidator_WithEmptyString_ReturnsInvalid() {
        let result = validator.validate("")
        XCTAssertEqual(result, .invalid)
    }

    func testEmailValidator_WithNoAtSymbol_ReturnsInvalid() {
        let result = validator.validate("testexample.com")
        XCTAssertEqual(result, .invalid)
    }

    func testEmailValidator_WithNoDomain_ReturnsInvalid() {
        let result = validator.validate("text@example")
        XCTAssertEqual(result, .invalid)
    }

    func testEmailValidator_WithNoComponents_ReturnsInvalid() {
        let result = validator.validate("textexample")
        XCTAssertEqual(result, .invalid)
    }

    func testEmailValidator_WithMultipleValidEmails_ReturnsInvalid() {
        let result = validator.validate("test1@example.com text2@example.com")
        XCTAssertEqual(result, .invalid)
    }

    func testEmailValidator_WithValidEmail_ReturnsValid() {
        let result = validator.validate("text@example.com")
        XCTAssertEqual(result, .valid)
    }
}
