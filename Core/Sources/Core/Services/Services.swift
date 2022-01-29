//
//  Services.swift
//  
//
//  Created by Dima Shvets on 22.01.2022.
//

import Foundation

final public class Services: UseCasesProvider {
    private let context: Context
    
    private lazy var authenticationService = AuthenticationService(context: context)
    
    public var authentication: AuthenticationUseCase { authenticationService }
    
    public init(_ environment: CoreEnvironment) {
        self.context = Context(environment: environment)
    }
    
}
