//
//  Device.swift
//  iPhonesDevices
//
//  Created by Lucas Yoshio Nakano on 26/05/23.
//

import SwiftUI

struct Device: Hashable, Codable, Identifiable {
    var name: String
    var releaseDate: String
    var screenSize: Float
    var description: String
    var isFavorite: Bool
    var id: Int
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
}
