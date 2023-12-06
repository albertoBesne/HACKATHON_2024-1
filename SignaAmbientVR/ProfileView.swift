//
//  ProfileView.swift
//  SignaAmbientVR
//
//  Created by CEDAM07 on 06/12/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Image("portada")
                .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            
            Image("signabot")
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .offset(y: -130)
                .padding(.bottom, -130)
            
            Text("SignaBot")
                .font(.custom("PollyRounded-Bold", size: 20))
                .foregroundColor(.customGreen)
            
            Text("@signa_bot2023")
                .font(.subheadline)
            
            Text("")
            
            HStack {
                VStack {
                    Text("9")
                        .font(.title)
                    Text("Post")
                }
                Spacer()
                VStack {
                    Text("2k")
                        .font(.title)
                    Text("Seguidores")
                }
                Spacer()
                VStack {
                    Text("120")
                        .font(.title)
                    Text("Siguiendo")
                }
            }
            .padding()
            .frame(maxWidth: 400)
            
        }
        .frame(maxHeight: 500, alignment: .top)
        .cornerRadius(3)
    }
}

#Preview {
    ProfileView()
}
