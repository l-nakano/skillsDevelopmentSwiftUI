//
//  DevicesListView.swift
//  iPhonesDevices
//
//  Created by Lucas Yoshio Nakano on 26/05/23.
//

import SwiftUI

struct DevicesListView: View {
    @EnvironmentObject var modelData: ModelData
    @State var showFavoritesOnly = false
    
    var filteredDevices: [Device] {
        modelData.devices.filter({ !showFavoritesOnly || $0.isFavorite })
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Mostra apenas favotiros")
                }
                
                ForEach(filteredDevices) { device in
                    NavigationLink {
                        DeviceDetailsView(device: device)
                    } label: {
                        DeviceListRowView(device: device)
                    }
                }
            }
            .navigationTitle("Dispositivos")
        }
    }
}

struct DevicesListView_Previews: PreviewProvider {
    static var previews: some View {
        DevicesListView()
            .environmentObject(ModelData())
    }
}
