//
//  SongPicker.swift
//  VoxReducer
//
//  Created by Loud on 11/15/20.
//

import SwiftUI

struct SongPicker: UIViewControllerRepresentable {

  func makeUIViewController(context: UIViewControllerRepresentableContext<SongPicker>) -> MPMediaPickerController {
    let mediaPicker = MPMediaPickerController()
    mediaPicker.showsCloudItems = false
    mediaPicker.allowsPickingMultipleItems = false
    mediaPicker.delegate = context.coordinator
    mediaPicker.prompt = "Select song"
    
    return mediaPicker
  }

  func updateUIViewController(_ uiViewController: MPMediaPickerController, context: UIViewControllerRepresentableContext<SongPicker>) {
      
  }
  
  func makeCoordinator() -> Coordinator {
      Coordinator()
  }
  
  class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    // see this: https://www.hackingwithswift.com/books/ios-swiftui/using-coordinators-to-manage-swiftui-view-controllers

  }
}
