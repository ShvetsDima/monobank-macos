//
//  MonobankApp.swift
//  Monobank
//
//  Created by Dima Shvets on 15.12.2021.
//

import SwiftUI
import Umbrella

@main
struct MonobankApp: App {
    
    var body: some Scene {
        WindowGroup {
            Window(Environment())
                .frame(minWidth: 1024, idealWidth: 1024,
                       minHeight: 480, idealHeight: 480)
        }
    }
}
