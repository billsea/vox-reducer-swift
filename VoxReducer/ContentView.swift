//
//  ContentView.swift
//  VoxReducer
//
//  Created by Loud on 11/13/20.
//

import SwiftUI

struct ContentView: View {
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
