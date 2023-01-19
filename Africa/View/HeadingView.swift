//
//  HeadingView.swift
//  Africa
//
//  Created by Ahmet Ali ÇETİN on 19.01.2023.
//

import SwiftUI

struct HeadingView: View {
    //MARK: PROPERTIES
    var headingImage: String
    var headingText: String
    
    //MARK: BODY
    var body: some View {
        HStack {
            
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}
//MARK: PREVIEWS
struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness In Pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
