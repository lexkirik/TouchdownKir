//
//  TouchdownKirApp.swift
//  TouchdownKir
//
//  Created by Test on 24.09.23.
//

import SwiftUI

@main
struct TouchdownKirApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
