//
//  MainTextField.swift
//  
//
//  Created by Dima Shvets on 06.02.2022.
//

import SwiftUI
import Resources

public struct MainTextField: View {

    public let placeholder: String
    public let text: Binding<String>
    
    public init(placeholder: String, text: Binding<String>) {
        self.placeholder = placeholder
        self.text = text
    }
    
    @State private var isEditing = false
    
    private var shouldPlaceHolderMove: Bool {
        isEditing || !text.wrappedValue.isEmpty
    }
    
    public var body: some View {
        ZStack(alignment: .leading) {
            TextField("", text: text, onEditingChanged: { (edit) in
                isEditing = edit
            })
                .overlay(VStack {
                    Divider()
                        .frame(height: 2)
                        .offset(x: .zero, y: 16)
                })
                .padding()
                .frame(height: 44)
                .foregroundColor(Color.primary)
                .accentColor(Color.secondary)
                .animation(.linear)
                .textFieldStyle(PlainTextFieldStyle())
            Text(placeholder)
                .foregroundColor(Color.secondary)
                .background(Color.clear)
                .padding(shouldPlaceHolderMove ?
                         EdgeInsets(top: .zero, leading: 16, bottom: 44, trailing: .zero) :
                            EdgeInsets(top: .zero, leading: 16, bottom: .zero, trailing: .zero))
                .scaleEffect(shouldPlaceHolderMove ? 1.0 : 1.2)
                .animation(.linear)
        }
        .font(.inter(.medium, size: 16))
    }
}

struct demo: View {
    @State var token: String = ""
    var body: some View {
        VStack {
            MainTextField(placeholder: "Token", text: $token)
        }.padding()
    }
}

struct FloatingTextField_Previews: PreviewProvider {
    static var previews: some View {
        demo()
    }
}
