//
//  Environment.swift
//  Monobank
//
//  Created by Dima Shvets on 16.01.2022.
//

import Foundation
import Umbrella

final class Environment: Umbrella.Environment {
    
    var baseURL: URL {
        guard let baseURLstring = Environment.infoDictionary[Keys.baseURL] as? String,
              let baseURL = URL(string: baseURLstring) else {
                  fatalError("Base url not set up for this environment")
              }
        return baseURL
    }
    
    var bundleID: String {
        guard let bundleID = Environment.infoDictionary[Keys.bundleID] as? String else {
            fatalError("Bundle not set up for this project")
        }
        return bundleID
    }
    
    var tokenKey: String {
        guard let tokenKey = Environment.infoDictionary[Keys.tokenKey] as? String else {
            fatalError("Token key not set up for this project")
        }
        return tokenKey
    }
    
    var authorizationHeader: String {
        guard let authorizationHeader = Environment.infoDictionary[Keys.authorizationHeader] as? String else {
            fatalError("Authorization header not set up for this project")
        }
        return authorizationHeader
    }
    
    private static let infoDictionary: [String: Any] = {
        guard let dict = Bundle.main.infoDictionary else {
            fatalError("Info.plist file not found")
        }
        return dict
    }()
    
}

extension Environment {
    
    enum Keys {
        static let baseURL = "BASE_URL"
        static let tokenKey = "TOKEN_KEY"
        static let authorizationHeader = "AUTHORIZATION_HEADER"
        static let bundleID = "CFBundleIdentifier"
    }
}



