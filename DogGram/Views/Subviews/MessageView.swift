//
//  MessageView.swift
//  DogGram
//
//  Created by Harshvardhan Basava on 24/09/21.
//

import SwiftUI

struct MessageView: View {
    @State var comment: CommentModel
    var body: some View {
        HStack{
            //MARK: profile image
            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
            VStack(alignment: .leading, spacing: 4, content: {
                //MARK: username
                Text(comment.username)
                    .font(.caption)
                    .foregroundColor(.gray)
                //MARK: comments
                Text(comment.content)
                    .padding(.all, 8)
                    .foregroundColor(.primary)
                    .background(.gray)
                    .cornerRadius(10)
            })
            Spacer(minLength: 0)
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var comment: CommentModel = CommentModel(commentID: "", userID: "", username: "johndoe", content: "This is a nice pic!!", dateCreated: Date())
    static var previews: some View {
        MessageView(comment: comment)
            .previewLayout(.sizeThatFits)
    }
}
