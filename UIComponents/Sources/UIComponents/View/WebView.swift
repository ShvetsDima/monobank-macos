//
//  WebView.swift
//  
//
//  Created by Dima Shvets on 15.01.2022.
//

import SwiftUI
import WebKit

struct WebView: NSViewRepresentable {
    
    let url: URL
    
    func makeNSView(context: Self.Context) -> WKWebView { WKWebView() }

    func updateNSView(_ nsView: WKWebView, context: Self.Context) {
        nsView.load(URLRequest(url: url))
    }
    
}

#if DEBUG
struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(url: URL(string: "https://www.apple.com")!)
    }
}
#endif
