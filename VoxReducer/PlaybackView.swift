//
//  PlaybackView.swift
//  VoxReducer
//
//  Created by Loud on 12/13/20.
//

import CoreMedia
import SwiftUI

// Note: Must use device for song picker.

// TODO: Listen to mediaItem State and pass to audioPlayback.setUserMediaItemCollection:
// i.e. [_player setUserMediaItemCollection:_userMediaItemCollection];

struct PlaybackView: View {
  fileprivate var player: audioPlayback?
  @State private var showingSongPicker = false

  var body: some View {
    Text("Playback")
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

struct PlaybackView_Previews: PreviewProvider {
    static var previews: some View {
        PlaybackView()
    }
}
