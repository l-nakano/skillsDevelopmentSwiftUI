//
//  DeviceDetailsView.swift
//  iPhonesDevices
//
//  Created by Lucas Yoshio Nakano on 26/05/23.
//

import SwiftUI

struct DeviceDetailsView: View {
    @EnvironmentObject var modelData: ModelData
    var device: Device
    
    var deviceIndex: Int {
        modelData.devices.firstIndex(where: { $0.id == device.id }) ?? 0
    }
    
    var body: some View {
        ScrollView {
            Spacer()
            
            CircleImageView(image: device.image)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(device.name)
                        .font(.title)
                        .foregroundColor(.black)
                    
                    FavoriteButtonView(isSet: $modelData.devices[deviceIndex].isFavorite)
                }
                HStack {
                    Text("\(String(format: "%.1f", device.screenSize)) pol")

                    Spacer()
                    
                    Text(device.releaseDate)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("Sobre o \(device.name)")
                    .font(.title2)
                
                Text(device.description)
            }
            .padding()
        }
        .navigationTitle("Informações do \(device.name)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DeviceDetailsView_Previews: PreviewProvider {
    static var modelData = ModelData()
    
    static var previews: some View {
        DeviceDetailsView(device: modelData.devices[0])
            .environmentObject(modelData)
    }
}
