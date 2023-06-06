//
//  CollectionLoader.swift
//  Carousels
//
//  Created by Bramhall, Joe on 4/12/23.
//

import Foundation

struct DataLoader {

    private static let decoder = JSONDecoder()

    static var collection: Collection {

        let resource = Bundle.main.url(forResource: "content", withExtension: "json")!
        let data = try! Data(contentsOf: resource)
        let collection = try! decoder.decode(Collection.self, from: data)
        return collection
    }

    static var books: [Book] {
        let resource = Bundle.main.url(forResource: "books", withExtension: "json")!
        let data = try! Data(contentsOf: resource)
        let books = try! decoder.decode([Book].self, from: data)
        return books
    }
}
