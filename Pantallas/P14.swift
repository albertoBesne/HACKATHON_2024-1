//
//  P14.swift
//  baseProyecto
//
//  Created by CEDAM17 on 06/12/23.
//

import SwiftUI

struct P14: View {
    var body: some View
    {
        VStack
        {
            DetallesP4()
        }
    }
}

#Preview {
    P14()
}



struct DescipcionP4: View {
    
    @Environment(\.presentationMode) var presentationMode : Binding<PresentationMode>
    
    var body: some View {
        VStack (alignment: .leading)
        {
            ZStack{
                
            }
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Regreso(action: {presentationMode.wrappedValue.dismiss()}))
            
            HStack
            {
                Spacer()
                Text("Libretas")
                    .font(.custom("Montserrat-Black", size: 45))
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(hex: "#11470C"))
                Spacer()
            }
            
            Text("Acerca de:")
                .fontWeight(.bold)
                .padding(.vertical, 8)
        
            Text("Si las libretas están hechas de papel reciclado, se promueve la reducción de la tala de árboles y la conservación de recursos forestales. Además, al finalizar su uso, se pueden desechar adecuadamente a través de métodos de reciclaje de papel para cerrar el ciclo y minimizar el impacto ambiental. Optar por libretas sostenibles y reciclables contribuye a la gestión responsable de recursos naturales.")
                .font(.custom("Montserrat-Regular", size: 19))
                .lineLimit(nil)
                .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                .lineSpacing(8.0)
                .opacity(0.6)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 100, height: 10)
                .background(Color(red: 0.84, green: 0.92, blue: 0.73))
                
                
            
            
        }
        .padding()
        .padding(.top)
        .background(Color(red: 0.84, green: 0.92, blue: 0.73))
        .cornerRadius(35.0)
        }
}

struct DetallesP4: View {
    var body: some View {
        ZStack
        {
            //Posible color
            Color(hex: "#11470C")
                .edgesIgnoringSafeArea(.all)
            ScrollView
            {
                Image("Camarillo1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                DescipcionP4()
                    .offset(y:-150)
                
                
            }
            .edgesIgnoringSafeArea(.top)
            
        }
    }
}

struct Regreso4: View {
    
    let action: ()-> Void
    var body: some View {
        
        
        Button(action: action, label: {
            Image("flecharegreso")
                .padding(.all, 12)
        })
    }
}

