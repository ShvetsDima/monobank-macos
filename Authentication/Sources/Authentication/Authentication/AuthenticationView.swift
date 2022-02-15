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
                .frame(maxWidth: .infinity)
            VStack {
                step(number: L10n.Step._1.text,
                     color: Asset.Colors.lavender.color,
                     title: L10n.Title.Authentication.Step._1.text,
                     description: L10n.Description.Authentication.Step._1.text)
                step(number: L10n.Step._2.text,
                     color: Asset.Colors.cornflowerBlue.color,
                     title: L10n.Title.Authentication.Step._2.text,
                     description: L10n.Description.Authentication.Step._2.text)
                step(number: L10n.Step._3.text,
                     color: Asset.Colors.equator.color,
                     title: L10n.Title.Authentication.Step._3.text,
                     description: L10n.Description.Authentication.Step._3.text)
                MainTextField(placeholder: L10n.Placeholder.token.text, text: $text)
                MainButton(title: L10n.Button.login.text, action: {})
                    .padding()
            }
            .frame(maxWidth: .infinity)
        }
        .background(Asset.Colors.contrastSecondary.color)
    }
    
    @ViewBuilder
    private func step(number: String, color: Color, title: String, description: String) -> some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 16, style: .continuous)
                    .fill(color)
                    .frame(width: 44, height: 44)
                Text(number)
            }
            .padding()
            VStack(alignment: .leading) {
                Text(title)
                Text(description)
            }
            .frame(maxWidth: .infinity)
            .padding(.trailing)
        }
        .font(.inter(.medium, size: 16))

    }
}

#if DEBUG
struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView(MockEnvironment())
    }
}
#endif
