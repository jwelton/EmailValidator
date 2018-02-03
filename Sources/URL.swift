//
//  URL.swift
//  EmailValidator-iOS
//
//  Created by Jake Welton on 2/3/18.
//  Copyright © 2018 EmailValidator. All rights reserved.
//

import Foundation

extension URL {
    enum Scheme {
        case mailto
    }

    func containsScheme(_ scheme: Scheme) -> Bool {
        guard let components = URLComponents(url: self, resolvingAgainstBaseURL: false) else {
            return false
        }

        return components.scheme == "mailto"
    }
}
