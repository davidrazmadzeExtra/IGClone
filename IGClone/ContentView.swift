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
      Header()
      
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
struct Header: View {
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
