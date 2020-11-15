//
//  ContentView.swift
//  VoxReducer
//
//  Created by Loud on 11/13/20.
//

import CoreMedia
import SwiftUI

struct ContentView: View {
  fileprivate var player: audioPlayback!

  init() {
    player = audioPlayback()
    player.initializeAudio()
    let filterState = player.getFilterState()
    
    player.setTargetWidth(500.0)
  }
    var body: some View {

      Text("Hello, world...!")
            .padding()
          .foregroundColor(.green)

      Button("Start", action: {
        debugPrint("starting...")
      })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
