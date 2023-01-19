//
//  VideoListView.swift
//  Africa
//
//  Created by Ahmet Ali ÇETİN on 18.01.2023.
//

import SwiftUI

struct VideoListView: View {
    //MARK: PROPERTIES
    @State var videos: [VideoModel] = Bundle.main.decode("videos.json")
    let hapticImpacts = UIImpactFeedbackGenerator(style: .medium)
    
    //MARK: BODY
    var body: some View {
        NavigationView {
            List{
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                        VideoListItemView(video: item)
                            .padding(.vertical, 8)
                    }
                }//: LOOP
            }//: LIST
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        //Shuffle videos
                        videos.shuffle()
                        hapticImpacts.impactOccurred()
                    } label: {
                        Image(systemName: "arrow.2.squarepath")
                    }

                }
            }
        }//: NAVIGATION VIEW
    }
}
//MARK: PREVIEW
struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
