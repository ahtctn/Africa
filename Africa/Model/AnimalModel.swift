//
//  AnimalModel.swift
//  Africa
//
//  Created by Ahmet Ali ÇETİN on 19.01.2023.
//

import Foundation

struct AnimalModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
