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
    
    let umbrella: Umbrella
    
    init() {
        self.umbrella = Umbrella()
    }
    
    var body: some Scene {
        WindowGroup {
            Text("Debug")
        }
    }
}
