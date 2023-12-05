//
//  ContentView.swift
//  baseProyecto
//
//  Created by Alberto Besne Cabrera on 04/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Chicas Super Poderosas")
            Color(.blue)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Text("Hello, \nWorld!")
                .font(.custom("RubbikBubbles-Regular", size: 50))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
