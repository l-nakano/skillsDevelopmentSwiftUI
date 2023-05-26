//
//  ModelData.swift
//  test
//
//  Created by Lucas Yoshio Nakano on 25/05/23.
//

import Foundation
import Combine

class ModelData: ObservableObject {
    @Published var devices: [Device] = load("iPhonesData.json")
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Could not find \(filename) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Could not load \(filename) from main bundle: \(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Could not parde \(filename) as \(T.self): \(error)")
    }
}
