//
//  AuthenticationReducer.swift
//  
//
//  Created by Dima Shvets on 22.01.2022.
//

import Core
import ComposableArchitecture

struct AuthenticationEnvironment {
    let authenticationUseCase: AuthenticationUseCase
}

struct AuthenticationState: Equatable {
    var isLoading = false
}

enum AuthenticationAction {
    case onAppear
    case onDisappear
}

let authenticationReducer = Reducer<AuthenticationState, AuthenticationAction, AuthenticationEnvironment>
    .init { state, action, environment in
        
        struct AuthenticationCancelId: Hashable {}
        
        switch action {
        case .onAppear:
            return .none
        case .onDisappear:
            return .cancel(id: AuthenticationCancelId())
        }
    }



