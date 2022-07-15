//
//  AVPlayerHB.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/14/22.
//

import SwiftUI
import AVKit

struct AVPlayerHB: View {
    @State var player = AVPlayer()
    @State var videoStartTime = CMTimeMake(value: 10, timescale: 1)
    
    var videoUrl: String = "https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4"
    
    var body: some View {
        VideoPlayer(player: player)
            .ignoresSafeArea()
            .onAppear {
                player = AVPlayer(url: URL(string: videoUrl)!)
                player.play()
//                player.pause()
                player.seek(to: videoStartTime)
                player.rate = 1.5
            }
    }
}

struct AVPlayerHB_Previews: PreviewProvider {
    static var previews: some View {
        AVPlayerHB()
    }
}
