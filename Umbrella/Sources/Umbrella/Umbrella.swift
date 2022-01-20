import Resources
import Authentication

public struct Umbrella: View {

    private var config: UmbrellaConfig

    public init(_ config: UmbrellaConfig) {
        self.config = config
        Resources.registerFonts()
    }

    public var body: some View {
        TodosView(config)
    }
}
