//
//  PostArrayObject.swift
//  DogGram
//
//  Created by Harshvardhan Basava on 23/09/21.
//

import Foundation

class PostArrayObject: ObservableObject{
    @Published var dataArray = [PostModel]()
    init(){
        
        print("Fetch from DB here.")
        
        let post1 = PostModel(postID: "", userID: "", username: "johndoe", caption: "This is a short caption.", dateCreated: Date(), likeCount: 0, likedByUser: false)
        let post2 = PostModel(postID: "", userID: "", username: "jessicagreen", caption: nil, dateCreated: Date(), likeCount: 0, likedByUser: false)
        let post3 = PostModel(postID: "", userID: "", username: "brandonblue", caption: "My doggo is really happy today, vet appointment cancelled!!", dateCreated: Date(), likeCount: 0, likedByUser: false)
        let post4 = PostModel(postID: "", userID: "", username: "yvetyello", caption: "Yellow is a nice theme color", dateCreated: Date(), likeCount: 0, likedByUser: false)
        let post5 = PostModel(postID: "", userID: "", username: "randyred", caption: "This will be an extra long caption to check the bounds and hence set it accordingly. hehehehehehehehehe", dateCreated: Date(), likeCount: 0, likedByUser: false)
        let post6 = PostModel(postID: "", userID: "", username: "chimkennugg", caption: nil, dateCreated: Date(), likeCount: 0, likedByUser: false)
        
        self.dataArray.append(post1)
        self.dataArray.append(post2)
        self.dataArray.append(post3)
        self.dataArray.append(post4)
        self.dataArray.append(post5)
        self.dataArray.append(post6)
    }
}
