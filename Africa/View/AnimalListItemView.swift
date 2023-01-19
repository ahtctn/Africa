//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Ahmet Ali ÇETİN on 19.01.2023.
//

import SwiftUI

struct AnimalListItemView: View {
    //MARK: PROPERTIES
    let animal: AnimalModel
    
    //MARK: BODY
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 15)
                )
                
            
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .padding(.trailing, 8)
            }
        }
    }
}
//MARK: PREVIEW
struct AnimalListItemView_Previews: PreviewProvider {
    
    static let animal: [AnimalModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalListItemView(animal: animal[4])
            .previewLayout(.sizeThatFits)
        
    }
}
