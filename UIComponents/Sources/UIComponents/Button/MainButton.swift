//
//  MainButton.swift
//  
//
//  Created by Dima Shvets on 15.01.2022.
//

import SwiftUI
import Resources

public struct MainButton: View {
    
    let title: String
    let action: () -> Void
    
    public init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }
    
    public var body: some View {
        Button(title, action: action)
            .buttonStyle(RoundedRectangleButtonStyle())
    }
}

struct RoundedRectangleButtonStyle: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    HStack {
      Spacer()
      configuration.label.foregroundColor(.white)
      Spacer()
    }
    .padding()
    .background(Color.red.cornerRadius(8))
    .scaleEffect(configuration.isPressed ? 0.99 : 1)
  }
}

#if DEBUG
struct MainButton_Previews: PreviewProvider {
    static var previews: some View {
        MainButton(title: "Main Button") {
            print("Main Button")
        }
    }
}
#endif
