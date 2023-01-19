//
//  GalerryView.swift
//  Africa
//
//  Created by Ahmet Ali ÇETİN on 18.01.2023.
//

import SwiftUI

struct GalleryView: View {
    //MARK: PROPERTIES
    
    //MARK: BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Text("Gallery")
        }//: SCROLL VIEW
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}
//MARK: PREVIEWS
struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
