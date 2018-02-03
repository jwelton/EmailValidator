//
//  EmailValidator.swift
//  EmailValidator
//
//  Created by Jake Welton on 2/3/18.
//  Copyright © 2018 EmailValidator. All rights reserved.
//

import Foundation

public class EmailValidator {
    private lazy var emailDetector: NSDataDetector? = {
        return try? NSDataDetector(types: NSTextCheckingResult.CheckingType.link.rawValue)
    }()

    public enum Result {
        case valid
        case invalid
    }

    public init() { }

    public func validate(_ email: String) -> Result {
        let range = NSRange(location: 0, length: email.count)

        guard let matches = emailDetector?.matches(in: email, range: range),
            matches.count == 1,
            let matchUrl = matches.first?.url else {
                return .invalid
        }

        return matchUrl.containsScheme(.mailto) ? .valid : .invalid
    }
}
