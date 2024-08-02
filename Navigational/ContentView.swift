//
//  ContentView.swift
//  Navigational
//  .navigationTitle("Home")
//.navigationBarTitleDisplayMode(.inline)
//.navigationBarHidden(true)
//
//  Created by Scholar on 7/26/24.
// ensure that toolbar and the navigation stuff are all inside the navigational stack

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("This is the root view 🥦")
                .font(.title)
                
                NavigationLink(destination: secondView()) {
                    Text("Click me!")
                        .foregroundColor(Color.red)
                }
            
        }
            .toolbar {
                ToolbarItemGroup(placement: .status) {
                    NavigationLink(destination: secondView()) {Text("Second View")
                        .foregroundColor(Color.red)}
                }
            }
        
        }
    }
}

#Preview {
    ContentView()
}
