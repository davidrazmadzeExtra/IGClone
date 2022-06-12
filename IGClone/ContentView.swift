//
//  ContentView.swift
//  IGClone
//
//  Created by David Razmadze on 6/12/22.
//

import SwiftUI

struct ContentView: View {
  
  var body: some View {
    VStack {
      HeaderView()
      
      StoryView()
      
      Spacer()
    }
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

/// Contains Logo, plus, heart, & message
struct HeaderView: View {
  var body: some View {
    HStack {
      Image(systemName: "rectangle.inset.filled.and.person.filled")
      
      Spacer()
      
      HStack(spacing: 20) {
        Image(systemName: "plus")
        Image(systemName: "heart")
        Image(systemName: "message")
      }
    }
    .padding(.horizontal, 16)
    .padding(.vertical, 8)
  }
}

struct StoryView: View {
  
  // Parameters to pass into `StoryView()`
  var image = "person_1"
  var name = "John Smith"
  
  // Private variables
  private var imageSize: CGFloat = 60
  private var lineWidth: CGFloat = 2.5
  private var overlayColors: [Color] = [ .blue, .purple, .red, .pink, .yellow, .orange]
  
  var body: some View {
    VStack {
      VStack {
        Image(image)
          .resizable()
          .frame(width: imageSize, height: imageSize)
          .cornerRadius(imageSize)
      }
      .overlay(
        Circle()
          .stroke(
            LinearGradient(colors: overlayColors, startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: lineWidth)
          .frame(width: imageSize + 8, height: imageSize + 8)
      )
      .frame(width: imageSize + 10, height: imageSize + 10)
      
      Text(name)
        .font(.caption)
    }
  }
}
