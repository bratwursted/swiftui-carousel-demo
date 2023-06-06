//
//  ItemView.swift
//  Carousels
//
//  Created by Bramhall, Joe on 4/12/23.
//

import SwiftUI

struct AlbumView: View {
    var album: Collection.Album

    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 10) {
                Image(album.artworkName)
                    .resizable()
                    .frame(width: 80, height: 80)

                VStack(alignment: .leading, spacing: 6) {
                    Text(album.title)
                        .font(.title)
                    Text(album.summary)
                        .font(.body)
                }

            }
            Spacer()
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumView(album: .preview)
    }
}

extension Collection.Album {
    static var preview: Self {
        .init(title: "My title", summary: "An album released in 1954", artworkName: "horace")
    }
}
