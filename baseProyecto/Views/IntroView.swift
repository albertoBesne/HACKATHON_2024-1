//
//  IntroView.swift
//  baseProyecto
//
//  Created by CEDAM16 on 05/12/23.
//

import SwiftUI

struct IntroView: View 
{
    @State var navIntro = false
    
    var body: some View
    {
        ZStack
        {
            if navIntro
            {
                LoginView()
            }
            else
            {
                VStack 
                {
                    Circle()
                        .scaledToFit()
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .frame(width: 250)
                    Text("Poketrash")
                        .font(.custom("", size: 40))
                        .fontWeight(.bold)
                        .padding()
                    
                }
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.5){
                withAnimation{
                    navIntro = true
                }
            }
        }
    }
}

#Preview {
    IntroView()
}
