//
//  VideoModel.swift
//  Africa
//
//  Created by Ahmet Ali ÇETİN on 19.01.2023.
//

import Foundation

struct VideoModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
