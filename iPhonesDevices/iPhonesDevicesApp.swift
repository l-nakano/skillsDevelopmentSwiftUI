//
//  iPhonesDevicesApp.swift
//  iPhonesDevices
//
//  Created by Lucas Yoshio Nakano on 26/05/23.
//

import SwiftUI

@main
struct iPhonesDevicesApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
