//
//  EmailValidator.swift
//  EmailValidator
//
//  Created by Jake Welton on 2/3/18.
//  Copyright © 2018 EmailValidator. All rights reserved.
//

import Foundation

public class EmailValidator {
    public enum Result {
        case valid
        case invalid
    }

    public init() { }

    public func validate(_ email: String) -> Result {
        do {
            let detector = try NSDataDetector(types: NSTextCheckingResult.CheckingType.link.rawValue)
            let matches = detector.matches(in: email, options: [], range: NSRange(location: 0, length: email.count))
            let mailToUrls = matches.flatMap { $0.url }.filter { $0.containsScheme(.mailto) }
            return mailToUrls.count == 1 ? .valid : .invalid
        } catch {
            return .invalid
        }
    }
}
