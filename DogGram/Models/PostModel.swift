//
//  PostModel.swift
//  DogGram
//
//  Created by Harshvardhan Basava on 23/09/21.
//

import Foundation
import SwiftUI

struct PostModel: Identifiable, Hashable{
    var id = UUID()
    var postID: String  //id for the post in Database
    var userID: String  //id for the user in DB
    var username: String //username of user in DB
    var caption: String?
    var dateCreated: Date
    var likeCount: Int
    var likedByUser: Bool
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
