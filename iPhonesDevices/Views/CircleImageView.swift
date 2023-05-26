//
//  CircleImageView.swift
//  iPhonesDevices
//
//  Created by Lucas Yoshio Nakano on 26/05/23.
//

import SwiftUI

struct CircleImageView: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var modelData = ModelData()
    
    static var previews: some View {
        CircleImageView(image: modelData.devices[0].image)
    }
}
