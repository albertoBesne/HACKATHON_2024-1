//
//  P13.swift
//  baseProyecto
//
//  Created by CEDAM17 on 06/12/23.
//

import SwiftUI

struct P13: View {
    var body: some View 
    {
        VStack
        {
            DetallesP3()
        }
    }
}

#Preview {
    P13()
}


struct DescipcionP3: View {
    
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
                Text("Latas")
                    .font(.custom("Montserrat-Black", size: 45))
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(hex: "#11470C"))
                Spacer()
            }
            
            Text("Acerca de:")
                .fontWeight(.bold)
                .padding(.vertical, 8)
        
            Text("Al reciclar latas de aluminio, se ahorra una gran cantidad de energía en comparación con la producción de aluminio a partir de materias primas. Este metal es 100% reciclable, lo que significa que las latas recicladas pueden convertirse en nuevas latas una y otra vez. El proceso de reciclaje de aluminio emite menos gases de efecto invernadero que la producción de aluminio a partir de mineral de bauxita. Reciclar latas contribuye así a la conservación de recursos, la reducción de residuos y la disminución de la huella ambiental asociada con la fabricación de productos de aluminio.")
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

struct DetallesP3: View {
    var body: some View {
        ZStack
        {
            //Posible color
            Color(hex: "#11470C")
                .edgesIgnoringSafeArea(.all)
            ScrollView
            {
                Image("Crojo1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                DescipcionP3()
                    .offset(y:-150)
                
                
            }
            .edgesIgnoringSafeArea(.top)
            
        }
    }
}

struct Regreso3: View {
    
    let action: ()-> Void
    var body: some View {
        
        
        Button(action: action, label: {
            Image("flecharegreso")
                .padding(.all, 12)
        })
    }
}

