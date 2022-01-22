//
//  AuthPlugin.swift
//  Monobank
//
//  Created by Dima Shvets on 20.05.2021.
//

import Foundation
import Moya

final class AuthPlugin: PluginType {
    private let keychain: KeychainService
    
    init(_ keychain: KeychainService) {
        self.keychain = keychain
    }
    
    func prepare(_ request: URLRequest, target: TargetType) -> URLRequest {
        guard target.needAuth else { return request }
        var updatedRequest = request
        let token = keychain.value(for: "accessToken")
        updatedRequest.setValue(token, forHTTPHeaderField: "Authorization")
        return updatedRequest
    }
    
    func didReceive(_ result: Result<Response, MoyaError>, target: TargetType) {
        #if DEBUG
        switch result {
        case .success(let body):
            print("Response:")
            if let json = try? JSONSerialization.jsonObject(with: body.data, options: .mutableContainers) {
                print(json)
            } else {
                let response = String(data: body.data, encoding: .utf8)!
                print(response)
            }
        case .failure( _):
            break
        }
        #endif
    }
}
