//
//  P12.swift
//  baseProyecto
//
//  Created by CEDAM17 on 06/12/23.
//

import SwiftUI

struct P12: View {
    var body: some View
    {
        VStack
        {
            DetallesP2()
        }
    }
}

#Preview {
    P12()
}


struct DescipcionP2: View {
    
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
                Text("  Botellas de plastico")
                    .font(.custom("Montserrat-Black", size: 45))
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(hex: "#11470C"))
                Spacer()
            }
            
            Text("Acerca de:")
                .fontWeight(.bold)
                .padding(.vertical, 8)
        
            Text("Las botellas de plástico son importantes en el reciclaje debido a que su reutilización contribuye significativamente a la reducción de residuos y la conservación de recursos. Al reciclar botellas de plástico, se evita la contaminación ambiental y se promueve la sostenibilidad al disminuir la necesidad de fabricar nuevas botellas a partir de materias primas vírgenes. Además, el reciclaje de plástico contribuye a la mitigación del impacto negativo en los ecosistemas y ayuda a cerrar el ciclo de vida de estos materiales.")
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

struct DetallesP2: View {
    var body: some View {
        ZStack
        {
            //Posible color
            Color(hex: "#11470C")
                .edgesIgnoringSafeArea(.all)
            ScrollView
            {
                Image("Cazul1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                DescipcionP2()
                    .offset(y:-150)
                
                
            }
            .edgesIgnoringSafeArea(.top)
            
        }
    }
}

struct Regreso2: View {
    
    let action: ()-> Void
    var body: some View {
        
        
        Button(action: action, label: {
            Image("flecharegreso")
                .padding(.all, 12)
        })
    }
}

