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
import Resources

public struct AuthenticationView: View {
    
    private let store: Store<AuthenticationState, AuthenticationAction>
    private let environment: Environment
    
    @State var text = ""
    
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
                .frame(minWidth: 0, maxWidth: .infinity)
            VStack {
                HStack(alignment: .top, spacing: .zero) {
                    Text("1")
                        .frame(minWidth: .zero, maxWidth: .infinity)
                    Text("L10n.Title.Scan.qr.text")
                        .frame(minWidth: .zero, maxWidth: .infinity)
                }
                HStack {
                    Text("2")
                    Text("L10n.Title.Scan.qr.text")
                }
                HStack {
                    Text("3")
                    Text("L10n.Title.Scan.qr.text")
                }
                TextField("Token", text: $text)
                Button("L10n.Button.login.text",
                       action: {})
            }.frame(minWidth: .zero, maxWidth: .infinity)
        }
    }
}

#if DEBUG
struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView(MockEnvironment())
    }
}
#endif
