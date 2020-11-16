//
//  SongPicker.swift
//  VoxReducer
//
//  Created by Loud on 11/15/20.
//

import SwiftUI

struct SongPicker: UIViewControllerRepresentable {
  @State private var mediaItem: MPMediaItem?
  @Environment(\.presentationMode) var presentationMode

  func makeUIViewController(context: UIViewControllerRepresentableContext<SongPicker>) -> MPMediaPickerController {
    let mediaPicker = MPMediaPickerController()
    mediaPicker.showsCloudItems = false
    mediaPicker.allowsPickingMultipleItems = false
    mediaPicker.delegate = context.coordinator as? MPMediaPickerControllerDelegate
    mediaPicker.prompt = "Select song"
    
    return mediaPicker
  }

  func updateUIViewController(_ uiViewController: MPMediaPickerController, context: UIViewControllerRepresentableContext<SongPicker>) {
      
  }
  
  func makeCoordinator() -> Coordinator {
      Coordinator(self)
  }
  
  class Coordinator: NSObject, MPMediaPickerControllerDelegate, UINavigationControllerDelegate {
    var parent: SongPicker

    init(_ parent: SongPicker) {
        self.parent = parent
    }

    func mediaPicker(_ mediaPicker: MPMediaPickerController, didPickMediaItems mediaItemCollection: MPMediaItemCollection) {
      // Load selected media item
      if let mediaItem = mediaItemCollection.items.first {
          parent.mediaItem = mediaItem
      }

      parent.presentationMode.wrappedValue.dismiss()
    }
  }
}
