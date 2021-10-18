//
//  UploadView.swift
//  DogGram
//
//  Created by Harshvardhan Basava on 26/09/21.
//

import SwiftUI

struct UploadView: View {
    var body: some View {
        ZStack {
            VStack{
                //Take photo
                Button(action: {
                    
                }, label: {
                    Text("Take Photo")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.MyTheme.yellowColor)
                })
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    .background(Color.MyTheme.purpleColor)
                //Upload from gallery
                Button(action: {
                    
                }, label: {
                    Text("Import Photo")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.MyTheme.purpleColor)
                })
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    .background(Color.MyTheme.yellowColor)
            }
            Image("logo.transparent")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .center)
                .shadow(radius: 12)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView()
    }
}
