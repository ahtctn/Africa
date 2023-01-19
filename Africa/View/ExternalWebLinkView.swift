//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Ahmet Ali ÇETİN on 19.01.2023.
//

import SwiftUI

struct ExternalWebLinkView: View {
    //MARK: PROPERTIES
    let animal: AnimalModel
    
    //MARK: BODY
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!)
                }
                .foregroundColor(.accentColor)
            }//: HSTACK
        }//: GROUPBOX
    }
}
//MARK: PREVIEW
struct ExternalWebLinkView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWebLinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
