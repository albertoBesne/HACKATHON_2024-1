//
//  P11.swift
//  baseProyecto
//
//  Created by CEDAM17 on 06/12/23.
//

import SwiftUI

struct P11: View
{
    var body: some View
    {
        VStack
        {
            DetallesP1()
        }
    }
}

#Preview {
    P11()
}




struct DescipcionP: View {
    
    @Environment(\.presentationMode) var presentationMode : Binding<PresentationMode>
    
    let nombres = [" Cáscaras de plátano", " Residuos de manzana", " Restos de pescado", " Cáscaras de aguacate"]
    let texto = ["Las cáscaras de plátano son una excelente adición a la composta debido a su alto contenido de nutrientes, como potasio y fósforo, que enriquecen el compost. Además, las cáscaras de plátano son ricas en materia orgánica, lo que ayuda a mejorar la estructura del suelo y promover la retención de agua. Al descomponerse, también liberan nutrientes lentamente, beneficiando el crecimiento de las plantas.", "Usar residuos de manzana en la composta aporta nutrientes como potasio y nitrógeno, mejorando la calidad del suelo y su capacidad de retención de agua. Estimula microorganismos beneficiosos, favoreciendo un suelo más saludable. La descomposición de estos residuos reduce la cantidad de desechos en vertederos, contribuyendo a una gestión sostenible de residuos. La composta resultante se convierte en un fertilizante natural que promueve el crecimiento vigoroso de las plantas.", "Estimula microorganismos benéficos que contribuyen a un suelo saludable. La descomposición de los restos de pescado puede reducir el olor desagradable mediante una adecuada mezcla con otros materiales orgánicos. Sin embargo, es esencial utilizarlos con moderación para evitar problemas de olores fuertes y atracción de animales no deseados.", "Los restos de aguacate son valiosos para la composta. Aportan materia orgánica rica en nutrientes como potasio y magnesio, beneficiando el suelo. La descomposición de los restos de aguacate mejora la estructura del suelo y su capacidad de retención de agua. También estimulan microorganismos benéficos, promoviendo un ambiente saludable para el crecimiento de las plantas. Es importante triturar los restos para acelerar la descomposición."]
    
    
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
                Text(" Cáscaras de plátano")
                    .font(.custom("Montserrat-Black", size: 45))
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(hex: "#11470C"))
                Spacer()
            }
            
            Text("Acerca de:")
                .fontWeight(.bold)
                .padding(.vertical, 8)
        
            Text("\(texto[0])")
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

struct DetallesP1: View {
    var body: some View {
        ZStack
        {
            //Posible color
            Color(hex: "#11470C")
                .edgesIgnoringSafeArea(.all)
            ScrollView
            {
                Image("Cverde1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                DescipcionP()
                    .offset(y:-150)
                
                
            }
            .edgesIgnoringSafeArea(.top)
            
        }
    }
}

struct Regreso: View {
    
    let action: ()-> Void
    var body: some View {
        
        
        Button(action: action, label: {
            Image("flecharegreso")
                .padding(.all, 12)
        })
    }
}
