//
//  EntryView.swift
//  SignaAmbientVR
//
//  Created by CEDAM07 on 06/12/23.
//

import SwiftUI

struct EntryView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Inicio")
                }
            
            DiscoverView()
                .tabItem {
                    Image(systemName: "camera.fill")
                    Text("¡Descubre!")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Tu Signa")
                }
        }
    }
}

#Preview {
    EntryView()
}
