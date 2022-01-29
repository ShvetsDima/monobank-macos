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
    
    public var body: some View {
        Button(title, action: action)
            .font(.headline)
            .foregroundColor(.white)
            .padding()
    }
}

struct MainButton_Previews: PreviewProvider {
    static var previews: some View {
        MainButton(title: "MainButton") {
            print("MainButton")
        }
    }
}
