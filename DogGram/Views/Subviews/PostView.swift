//
//  PostView.swift
//  DogGram
//
//  Created by Harshvardhan Basava on 23/09/21.
//

import SwiftUI

struct PostView: View {
    @State var post: PostModel
    var showHeaderAndFooter: Bool
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            // MARK: Header
            if showHeaderAndFooter{
                HStack {
                    Image("dog1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30, alignment: .center)
                        .cornerRadius(15)
                    Text(post.username)
                        .font(.callout)
                        .fontWeight(.medium)
                        .foregroundColor(.primary)
                    Spacer()
                    Image(systemName: "ellipsis")
                        .font(.headline)
                }
                .padding(.all, 6)
            }
            
            //MARK: Image
            Image("dog1")
                .resizable()
                .scaledToFit()
            
            //MARK: Footer
            if showHeaderAndFooter{
                HStack(alignment: .center, spacing: 20, content: {
                    Image(systemName: "heart")
                        .font(.title3)
                    NavigationLink(destination: {
                        CommentsView()
                    }, label: {
                        Image(systemName: "bubble.middle.bottom")
                            .font(.title3)
                            .foregroundColor(.primary)
                    })
                    Image(systemName: "paperplane")
                        .font(.title3)
                    Spacer()
                })
                    .padding(.all, 6)
                //MARK: Caption
                if let caption = post.caption{
                    HStack{
                        Text(caption)
                        Spacer(minLength: 0)
                    }
                    .padding(.all, 6)
                }
            }
        })
    }
}

struct PostView_Previews: PreviewProvider {
    
    static var post: PostModel = PostModel(postID: "", userID: "", username: "johndoe", caption: "This is a test caption.", dateCreated: Date(), likeCount: 0, likedByUser: false)
    
    static var previews: some View {
        PostView(post: post, showHeaderAndFooter: true)
            .previewLayout(.sizeThatFits)
    }
}
