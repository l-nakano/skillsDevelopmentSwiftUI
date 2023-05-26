//
//  ContentView.swift
//  iPhonesDevices
//
//  Created by Lucas Yoshio Nakano on 26/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        DevicesListView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
