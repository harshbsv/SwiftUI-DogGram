//
//  BrowseView.swift
//  DogGram
//
//  Created by Harshvardhan Basava on 24/09/21.
//

import SwiftUI

struct BrowseView: View {
    var posts = PostArrayObject()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            CarouselView()
            ImageGridView(posts: posts)
        })
        .navigationBarTitle("Browse")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BrowseView()
        }
    }
}
