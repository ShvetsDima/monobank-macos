//
//  AuthenticationView.swift
//  
//
//  Created by Dima Shvets on 22.01.2022.
//

import SwiftUI
import UIComponents
import Core
import ComposableArchitecture

public struct AuthenticationView: View {
    
    private let store: Store<AuthenticationState, AuthenticationAction>
    private let environment: Environment
    
    public init(_ environment: Environment) {
        let useCases = Services(environment)
        self.environment = environment
        self.store = .init(initialState: AuthenticationState(),
                           reducer: authenticationReducer,
                           environment: .init(authenticationUseCase: useCases.authentication))
    }
    
    public var body: some View {
        WithViewStore(store) { viewStore in
            content(viewStore)
                .onAppear { viewStore.send(.onAppear) }
                .onDisappear { viewStore.send(.onDisappear) }
        }
    }
    
    @ViewBuilder
    private func content(_ viewStore: ViewStore<AuthenticationState, AuthenticationAction>) -> some View {
        HStack {
            WebView(url: environment.baseURL)
            VStack {
                Text("Scan QR Code")
                Button("Login", action: {})
                //.main()
            }
        }.background(
            LinearGradient(gradient: Gradient(colors: [.blue, .green]),
                           startPoint: .topTrailing, endPoint: .bottomLeading)
        )
    }
}

#if DEBUG
struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView(MockEnvironment())
    }
}
#endif
