//
//  ContentView.swift
//  VoxReducer
//
//  Created by Loud on 11/13/20.
//

import CoreMedia
import SwiftUI

struct ContentView: View {
  fileprivate var player: audioPlayback?

  @State private var media: MPMediaItem?
  @State private var showingSongPicker = false


  var body: some View {
    Text("Hello, world...!")
      .padding()
      .foregroundColor(.green)

    VStack {
        Button("Select song") {
           self.showingSongPicker = true
        }
    }
    .sheet(isPresented: $showingSongPicker) {
        SongPicker()
    }
  }

  init() {
    player = audioPlayback()
    initPlayer()
  }

  private func initPlayer() {
    player?.initializeAudio()
    
    player?.playbackReady = { status in
      debugPrint(status)
    }

    player?.playbackCompleted = { status in
      debugPrint(status)
    }
    
    player?.playerReset = { status in
      debugPrint(status)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
