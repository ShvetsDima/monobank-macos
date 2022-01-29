//
//  Environment.swift
//  
//
//  Created by Dima Shvets on 29.01.2022.
//

import Foundation
import Core

public protocol Environment: CoreEnvironment { }

final class MockEnvironment: Environment {
    var baseURL: URL { URL(string: "https://www.google.com/")! }
    var bundleID: String { "bundleID" }
    var tokenKey: String { "tokenKey" }
    var authorizationHeader: String { "authorizationHeader" }
}
