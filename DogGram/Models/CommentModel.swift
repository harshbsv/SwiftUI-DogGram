 //
//  CommentModel.swift
//  DogGram
//
//  Created by Harshvardhan Basava on 24/09/21.
//

import Foundation
import SwiftUI

struct CommentModel: Identifiable, Hashable{
    var id = UUID()
    var commentID: String       //ID for the comment in the database
    var userID: String
    var username: String
    var content: String
    var dateCreated: Date
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
