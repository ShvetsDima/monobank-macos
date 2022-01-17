// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import SwiftUI

extension Font {
  public static func inter(_ style: InterStyle, fixedSize: CGFloat) -> Font {
    return Font.custom(style.rawValue, fixedSize: fixedSize)
  }

  public static func inter(_ style: InterStyle, size: CGFloat, relativeTo textStyle: TextStyle = .body) -> Font {
    return Font.custom(style.rawValue, size: size, relativeTo: textStyle)
  }

  public enum InterStyle: String {
    case black = "Inter-Black"
    case bold = "Inter-Bold"
    case extraBold = "Inter-ExtraBold"
    case extraLight = "Inter-ExtraLight"
    case light = "Inter-Light"
    case medium = "Inter-Medium"
    case regular = "Inter-Regular"
    case semiBold = "Inter-SemiBold"
    case thin = "Inter-Thin"
  }
}
