// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import SwiftUI

// MARK: - Strings

public enum L10n {
  public enum Button {
    /// Accept and Continue
    public static let accept = LocalizedString(lookupKey: "Button.Accept")
    /// Back
    public static let back = LocalizedString(lookupKey: "Button.Back")
    /// Cancel
    public static let cancel = LocalizedString(lookupKey: "Button.Cancel")
    /// Next
    public static let next = LocalizedString(lookupKey: "Button.Next")
  }
}

// MARK: - Implementation Details

extension L10n {
  fileprivate static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

public struct LocalizedString {
  internal let lookupKey: String

  var key: LocalizedStringKey {
    LocalizedStringKey(lookupKey)
  }

  var text: String {
    L10n.tr("Localizable", lookupKey)
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
