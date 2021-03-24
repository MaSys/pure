//
//  PureApp.swift
//  Pure
//
//  Created by Yaser Almasri on 23/03/21.
//

import SwiftUI

@main
struct PureApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Store.current)
                .preferredColorScheme(.light)
        }
    }
}
