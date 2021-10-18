//
//  ImageGridView.swift
//  DogGram
//
//  Created by Harshvardhan Basava on 24/09/21.
//

import SwiftUI

struct ImageGridView: View {
    @ObservedObject var posts: PostArrayObject
    var body: some View {
        LazyVGrid(columns: [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
        ],
        alignment: .center,
        spacing: nil,
        pinnedViews: [],
        content: {
            ForEach(posts.dataArray, id: \.self){ post in
                NavigationLink(destination: {
                    FeedView(posts: PostArrayObject(post: post), title: "Post")
                }, label: {
                    PostView(post: post, showHeaderAndFooter: false)
                })
            }
        })
    }
}

struct ImageGridView_Previews: PreviewProvider {
    static var previews: some View {
        ImageGridView(posts: PostArrayObject())
            .previewLayout(.sizeThatFits)
    }
}
