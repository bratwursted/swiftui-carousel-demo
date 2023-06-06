//
//  BookView.swift
//  Carousels
//
//  Created by Bramhall, Joe on 4/13/23.
//

import SwiftUI

struct BookView: View {
    var book: Book

    var body: some View {
        VStack(alignment: .center) {
            Text(book.title)
                .font(.title2)
            Text(book.author)
                .font(.subheadline)
            Image(book.coverImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
            HStack {
                Text(book.summary)
                    .font(.body)
                    .frame(alignment: .leading)
                Spacer()
            }
        }
    }
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView(book: .preview)
            .padding(.horizontal)
    }
}

extension Book {
    static var preview: Self {
        .init(
            title: "Impressive Novel Title",
            author: "By Very Impressive Person",
            summary: "This novel was written and was impressive.",
            coverImage: "gatsby"
        )
    }
}
