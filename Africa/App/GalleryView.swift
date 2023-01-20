//
//  GalerryView.swift
//  Africa
//
//  Created by Ahmet Ali ÇETİN on 18.01.2023.
//

import SwiftUI

struct GalleryView: View {
    //MARK: PROPERTIES
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    @State private var selectedAnimal: String = "lion"
    
    //DYNAMIC GRID LAYOUT
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Double = 3.0
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    //MARK: FUNCTIONS
    func randomColor() -> Double {
        return Double.random(in: 0...1)
    }
    
    func gridSwitch(){
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }
    
//    //EFFICIENT GRID DEFINITON
//    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    
    
    
    //MARK: BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            //MARK: GRID
            
            VStack(alignment: .center, spacing: 30) {
                //MARK: IMAGE
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color(red: randomColor(), green: randomColor(), blue: randomColor()), lineWidth: 8))
                    .shadow(color: Color(red: randomColor(), green: randomColor(), blue: randomColor()), radius: 10)
                
                //MARK: SLIDER
                Slider(value: $gridColumn, in: 2...4, step: 1)
                    .padding(.horizontal)
                    .onChange(of: gridColumn) { value in
                        gridSwitch()
                    }
                
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.accentColor, lineWidth: 1))
                            .onTapGesture {
                                selectedAnimal = item.image
                                haptics.impactOccurred()
                            }
                    }//: LOOP
                }//: GRID
                .animation(.easeIn)
                .onAppear {
                    gridSwitch()
                }
            }//: VSTACK
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
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
