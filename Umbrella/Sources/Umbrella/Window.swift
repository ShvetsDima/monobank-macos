import Resources
import Authentication
import SwiftUI

public struct Window: View {

    private var environment: Environment

    public init(_ environment: Environment) {
        self.environment = environment
        Resources.registerFonts()
    }

    public var body: some View {
        AuthenticationView(environment)
    }
}
