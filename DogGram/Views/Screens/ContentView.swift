//
//  ContentView.swift
//  DogGram
//
//  Created by Harshvardhan Basava on 23/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                FeedView(posts: PostArrayObject(), title: "Feed")
            }.tabItem{
                Image(systemName: "book.fill")
                Text("Feed")
            }
            NavigationView{
                BrowseView()
            }.tabItem{
                Image(systemName: "magnifyingglass")
                Text("Browse")
            }
            UploadView()
                .tabItem{
                    Image(systemName: "square.and.arrow.up.fill")
                    Text("Upload")
                }
            Text("Screen 4")
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
        .accentColor(Color.MyTheme.purpleColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
