//
//  MapAnnotation.swift
//  Africa
//
//  Created by Ahmet Ali ÇETİN on 20.01.2023.
//

import SwiftUI

struct MapAnnotationView: View {
    //MARK: PROPERTIES
    var location: LocationModel
    @State private var animation: Double = 0.0
    
    //MARK: BODY
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                .clipShape(Circle())
        }//: ZSTACK
        .onAppear {
            //MARK: FIX IT!
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1.0
            }
            
        }
    }
}
//MARK: PREVIEW
struct MapAnnotation_Previews: PreviewProvider {
    static var locations: [LocationModel] = Bundle.main.decode("locations.json")
    
    static var previews: some View {
        MapAnnotationView(location: locations[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
