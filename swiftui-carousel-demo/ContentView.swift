//
//  ContentView.swift
//  Carousels
//
//  Created by Bramhall, Joe on 4/12/23.
//

import SwiftUI

struct ContentView: View {
    let books = DataLoader.books
    let collection = DataLoader.collection

    var body: some View {
        NavigationStack {

            ScrollView {
                VStack {
                    ForEach(books, id: \.title) { book in
                        if books.firstIndex(of: book) == 1 {
                            VStack(alignment: .leading, spacing: 6) {
                                Text(collection.title)
                                    .font(.headline)
                                ScrollView(.horizontal) {
                                    HStack(alignment: .top) {
                                        ForEach(collection.albums) { album in
                                            AlbumView(album: album)
                                                .frame(width: UIScreen.main.bounds.width * 0.85)
                                        }
                                    }
                                }
                            }
                        } else {
                            HStack {
                                BookView(book: book)
                                    .padding(.bottom)
                            }
                        }
                    }
                    .padding(.horizontal, 20)
                }
                .frame(width: UIScreen.main.bounds.width)
            }
            .navigationTitle("My Stuff")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
