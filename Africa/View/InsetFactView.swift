//
//  InsetFactView.swift
//  Africa
//
//  Created by Ahmet Ali ÇETİN on 19.01.2023.
//

import SwiftUI

struct InsetFactView: View {
    //MARK: PROPERTIES
    let animal: AnimalModel
    
    //MARK: BODY
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self){ item in
                    Text(item)
                }
            }//: TAB
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//: GROUP
    }
}

//MARK: PREVIEWS
struct InsetFactView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
