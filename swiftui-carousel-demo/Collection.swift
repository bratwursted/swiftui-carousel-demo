//
//  AlbumContent.swift
//  Carousels
//
//  Created by Bramhall, Joe on 4/12/23.
//

import Foundation
import DeveloperToolsSupport

struct Collection: Decodable {
    struct Album: Decodable, Identifiable {
        var id: String {
            title
        }
        var title: String
        var summary: String
        var artworkName: String
    }

    var title: String

    var albums: [Album]
}
