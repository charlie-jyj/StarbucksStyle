//
//  CafeApp.swift
//  Cafe
//
//  Created by UAPMobile on 2022/02/15.
//

import SwiftUI

@main
struct CafeApp: App {
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .accentColor(.green)
        }
    }
}
