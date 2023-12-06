//
//  DiscoverView.swift
//  SignaAmbientVR
//
//  Created by CEDAM07 on 06/12/23.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        NavigationStack {
            HStack {
                List {
                    Section("Árboles") {
                        NavigationLink(destination: ContentView()) { Text("🌲 Pino") }
                        
                        NavigationLink(destination: JacarandaView()) { Text("🌳 Jacaranda") }
                        NavigationLink(destination: FresnoView()) { Text("🌳 Fresno") }
                    }
                    Section("Reciclaje") {
                        NavigationLink(destination: TrashView()) { Text("🗑️ Trash") }
                    }
                    Section("Animales") {
                        NavigationLink(destination: PumaView()) { Text("🐱 Puma") }
                    }
                }
            }
        }
    }
}

#Preview {
    DiscoverView()
}
