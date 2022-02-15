// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import SwiftUI

// MARK: - Strings

public enum L10n {
  public enum Button {
    /// Accept and Continue
    public static let accept = LocalizedString(lookupKey: "Button.Accept")
    /// Login
    public static let login = LocalizedString(lookupKey: "Button.Login")
    /// Next
    public static let next = LocalizedString(lookupKey: "Button.Next")
  }
  public enum Description {
    public enum Authentication {
      public enum Step {
        /// Description Step 1
        public static let _1 = LocalizedString(lookupKey: "Description.Authentication.Step.1")
        /// Description Step 2
        public static let _2 = LocalizedString(lookupKey: "Description.Authentication.Step.2")
        /// Description Step 3
        public static let _3 = LocalizedString(lookupKey: "Description.Authentication.Step.3")
      }
    }
  }
  public enum Placeholder {
    /// Token
    public static let token = LocalizedString(lookupKey: "Placeholder.Token")
  }
  public enum Step {
    /// 1
    public static let _1 = LocalizedString(lookupKey: "Step.1")
    /// 2
    public static let _2 = LocalizedString(lookupKey: "Step.2")
    /// 3
    public static let _3 = LocalizedString(lookupKey: "Step.3")
  }
  public enum Title {
    public enum Authentication {
      public enum Step {
        /// Title Step 1
        public static let _1 = LocalizedString(lookupKey: "Title.Authentication.Step.1")
        /// Title Step 2
        public static let _2 = LocalizedString(lookupKey: "Title.Authentication.Step.2")
        /// Title Step 3
        public static let _3 = LocalizedString(lookupKey: "Title.Authentication.Step.3")
      }
    }
    public enum Scan {
      /// Scan QR code
      public static let qr = LocalizedString(lookupKey: "Title.Scan.QR")
    }
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

  public var key: LocalizedStringKey {
    LocalizedStringKey(lookupKey)
  }

  public var text: String {
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
