//
//  Books.swift
//  Carousels
//
//  Created by Bramhall, Joe on 4/13/23.
//

import Foundation

struct Book: Decodable, Equatable, Identifiable {
    var id: String {
        title
    }
    var title: String
    var author: String
    var summary: String
    var coverImage: String
}
