//
//  LoginButton.swift
//  
//
//  Created by Dima Shvets on 15.01.2022.
//

import SwiftUI
import Resources

struct LoginButton: View {
    
    let action: () -> Void
    
    var body: some View {
        Button("FROM RESOURCES LOGIN", action: action)
            .font(.headline)
            .foregroundColor(.white)
            .padding()
    }
}

struct MainButton_Previews: PreviewProvider {
    static var previews: some View {
        LoginButton(action: self.print)
    }
}
