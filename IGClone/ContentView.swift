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
      
      HomeStories()
      
      Divider()
      
      PostHeader()
      
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

/// Contains a single story: Image with Name
/// Pass in `image` and `name` as parameters
/// Used in `HomeStories`
struct StoryView: View {
  
  // Parameters to pass into `StoryView()`
  var image: String
  var name: String
  
  // Private variables
  private var imageSize: CGFloat = 60
  private var lineWidth: CGFloat = 2.5
  private var overlayColors: [Color] = [ .blue, .purple, .red, .pink, .yellow, .orange]
  
  public init(image: String, name: String) {
    self.image = image
    self.name = name
  }
  
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

/// Contains a horizontal scroll view of `StoryView`
struct HomeStories: View {
  
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack(spacing: 16) {
        StoryView(image: "person_1", name: "Lee Chin")
        StoryView(image: "person_2", name: "Derek John")
        StoryView(image: "person_3", name: "Mike Lee")
        StoryView(image: "person_4", name: "Alex Ra")
        StoryView(image: "person_5", name: "Joe Smith")
        StoryView(image: "person_6", name: "Dave East")
      }
      .padding(.horizontal, 8)
    }
    .padding(.vertical, 12)
  }
  
}

/// Contains Image, Name, and Ellipsis
struct PostHeader: View {
  
  private var imageSize: CGFloat = 40
  
  var body: some View {
    HStack {
      HStack {
        Image("person_1")
          .resizable()
          .frame(width: imageSize, height: imageSize)
          .cornerRadius(imageSize)
        
        Text("Lee Chin")
          .font(.caption)
          .fontWeight(.bold)
      }
      
      Spacer()
      
      Image(systemName: "ellipsis")
    }
    .padding(.vertical, 12)
    .padding(.horizontal, 8)
  }
}
