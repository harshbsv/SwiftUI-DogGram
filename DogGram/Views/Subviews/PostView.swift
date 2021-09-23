//
//  PostView.swift
//  DogGram
//
//  Created by Harshvardhan Basava on 23/09/21.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            // MARK: Header
            HStack {
                Image("dog1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .cornerRadius(15)
                Text("User name here")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(.primary)
                Spacer()
                Image(systemName: "ellipsis")
                    .font(.headline)
            }
            .padding(.all, 6)
            
            //MARK: Image
            Image("dog1")
                .resizable()
                .scaledToFit()
            
            //MARK: Footer
            HStack(alignment: .center, spacing: 20, content: {
                Image(systemName: "heart")
                    .font(.title3)
                Image(systemName: "bubble.middle.bottom")
                    .font(.title3)
                Image(systemName: "paperplane")
                    .font(.title3)
                Spacer()
            })
                .padding(.all, 6)
            //MARK: Caption
            HStack{
                Text("This is the caption for the image. It can be as long as needed.")
                Spacer(minLength: 0)
            }
            .padding(.all, 6)
        })
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
            .previewLayout(.sizeThatFits)
    }
}
