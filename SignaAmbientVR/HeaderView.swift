//
//  HeaderView.swift
//  SignaAmbientVR
//
//  Created by CEDAM07 on 06/12/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        /* GeometryReader { geometry in
            ZStack {
                Ellipse()
                    //.fill(Color(red: 38, green: 134, blue: 88))
                    .fill(Color("CustomGreen"))
                    .frame(width: geometry.size.width * 1.4, height: geometry.size.height * 0.33)
                    .position(x: geometry.size.width / 2.35, y: geometry.size.height * 0.1)
                    .shadow(radius: 3)
                    .edgesIgnoringSafeArea(.all)
                
                HStack {
                    VStack(alignment: .leading) {
                        Image("signa_logo_white")
                    }
                    .padding(.leading, 25)
                    .padding(.top, 30)
                    Spacer()
                }
            }
        } */
        
        VStack {
            Image("signa_logo_white")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                .padding()
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
        .ignoresSafeArea()
        .background {
            Color("CustomGreen")
        }
        .shadow(radius: 3)
        .offset(y: -345)
    }
}

#Preview {
    HeaderView()
}
