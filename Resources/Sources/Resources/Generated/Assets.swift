// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import SwiftUI

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
public enum Asset {
  public enum Colors {

    public static let background = ColorAsset(name: "Colors/Background")
    public static let contrastPrimary = ColorAsset(name: "Colors/ContrastPrimary")
    public static let contrastSecondary = ColorAsset(name: "Colors/ContrastSecondary")
    public static let cornflowerBlue = ColorAsset(name: "Colors/CornflowerBlue")
    public static let emerald = ColorAsset(name: "Colors/Emerald")
    public static let equator = ColorAsset(name: "Colors/Equator")
    public static let lavender = ColorAsset(name: "Colors/Lavender")
    public static let main = ColorAsset(name: "Colors/Main")
  }
  public enum Images {

    public static let example = ImageAsset(name: "Images/Example")
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

public struct ColorAsset {
  fileprivate let name: String

  public var color: Color {
    Color(self)
  }
}

public extension Color {
  /// Creates a named color.
  /// - Parameter asset: the color resource to lookup.
  init(_ asset: ColorAsset) {
    self.init(asset.name, bundle: BundleToken.bundle)
  }
}

public struct ImageAsset {
  fileprivate let name: String

  public var image: Image {
    Image(name)
  }
}

public extension Image {
  /// Creates a labeled image that you can use as content for controls.
  /// - Parameter asset: the image resource to lookup.
  init(_ asset: ImageAsset) {
    self.init(asset.name, bundle: BundleToken.bundle)
  }
}

private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
      return Bundle.module
    #else
      return Bundle(for: BundleToken.self)
    #endif
  }()
}
