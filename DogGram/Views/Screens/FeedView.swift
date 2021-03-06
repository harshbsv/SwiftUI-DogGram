//
//  FeedView.swift
//  DogGram
//
//  Created by Harshvardhan Basava on 23/09/21.
//

import SwiftUI

struct FeedView: View {
    @ObservedObject var posts: PostArrayObject
    var title: String
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            LazyVStack {
                ForEach(posts.dataArray, id: \.self){ post in
                    PostView(post: post, showHeaderAndFooter: true)
                }
            }
        })
        .navigationBarTitle(title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FeedView(posts: PostArrayObject(), title: "Feed Test")
        }
    }
}
