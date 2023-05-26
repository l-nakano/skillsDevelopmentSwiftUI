//
//  DeviceListRow.swift
//  iPhonesDevices
//
//  Created by Lucas Yoshio Nakano on 26/05/23.
//

import SwiftUI

struct DeviceListRowView: View {
    var device: Device
    
    var body: some View {
        HStack {
            device.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(device.name)
            
            Spacer()
            
            if device.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct DeviceListRowView_Previews: PreviewProvider {
    static var modelData = ModelData()
    
    static var previews: some View {
        DeviceListRowView(device: modelData.devices[0])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
