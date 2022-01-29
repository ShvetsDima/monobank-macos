//
//  CoreEnvironment.swift
//  Monobank
//
//  Created by Dima Shvets on 28.04.2021.
//

import Foundation

public protocol CoreEnvironment {
    var baseURL: URL { get }
    var bundleID: String { get }
    var tokenKey: String { get }
    var authorizationHeader: String { get }
}
