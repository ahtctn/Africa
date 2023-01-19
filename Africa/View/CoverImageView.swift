//
//  CoverImageView.swift
//  Africa
//
//  Created by Ahmet Ali ÇETİN on 19.01.2023.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: PROPERTIES
    
    
    //MARK: BODY
    var body: some View {
        
        TabView {
            Image("cover-lion")
                .resizable()
                .scaledToFit()
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        
        
    }
}
//MARK: PREVIEW
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
