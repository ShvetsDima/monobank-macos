//
//  Context.swift
//  Monobank
//
//  Created by Dima Shvets on 28.04.2021.
//

import Foundation
import Moya

final class Context {

    let environment: CoreEnvironment
    let keychain: KeychainService
    let network: Network
    
    init(environment: CoreEnvironment) {
        self.environment = environment
        self.keychain = KeychainService(environment.bundleID)
        self.network = Network(baseURL: environment.baseURL, keychain: keychain)
    }

}
