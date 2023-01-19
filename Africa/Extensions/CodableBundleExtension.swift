//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Ahmet Ali ÇETİN on 19.01.2023.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //1. Locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("failed to locate \(file) from bundle")
        }
        //2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("failed to load \(file) from bundle")
        }
        //3. Create a decoder
        let decoder = JSONDecoder()
        //4. Create a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("failed to decode code \(file) from bundle.")
        }
        //5. Return the ready to use data
        return loaded
    }
}
