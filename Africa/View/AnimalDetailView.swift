//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Ahmet Ali ÇETİN on 19.01.2023.
//

import SwiftUI

struct AnimalDetailView: View {
    //MARK: PROPERTY
    let animal: AnimalModel
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20) {
                //: HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                //: TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                //: HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                //: GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness In Pictrues")
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                
                //: FACTS
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did You Know?")
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)
                
                
                //: DESCRIPTION
                Group{
                    HeadingView(headingImage: "info.circle", headingText: "All About \(animal.name)")
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                //: MAP
                
                Group {
                    HeadingView(headingImage: "map", headingText: "National Parks")
                    InsetMapView()
                }
                .padding(.horizontal)
                
                //: LINK
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More About \(animal.name)")
                    ExternalWebLinkView(animal: animal)
                }
                .padding(.horizontal)
                
                
            }//: VSTACK
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .large)
        }//: SCROLL VIEW
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[0])
        }
    }
}
