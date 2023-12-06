//
//  P1.swift
//  baseProyecto
//
//  Created by CEDAM17 on 05/12/23.
//

import SwiftUI

extension Color {
    init(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0

        Scanner(string: hexSanitized).scanHexInt64(&rgb)

        let red = Double((rgb & 0xFF0000) >> 16) / 255.0
        let green = Double((rgb & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgb & 0x0000FF) / 255.0

        self.init(red: red, green: green, blue: blue)
    }
}

struct HomeS: View {
    
    var body: some View {
        NavigationView {
            ZStack
            {
                //Fondo
                Color("1b")
                    .edgesIgnoringSafeArea(.all)
                
                VStack
                {
                    //Logo
                    ZStack
                    {
                        Image("Pleca1")
                            .frame(width: 396, height: 160)
                            .background(Color(red: 0.84, green: 0.92, blue: 0.73))
                            .offset(x: 0, y: -UIScreen.main.bounds.height / 10)
                            .ignoresSafeArea()
                            .padding(.bottom)
                        VStack
                        {
                            Image("Reciclaje")
                                .resizable()
                                .frame(width: 120, height: 120 )
                                .padding(.horizontal)
                                .padding(.top)
                            
                            TextoArriba()
                                .padding()
                        }
                    }
                    
                    
                    ScrollView
                    {
                        VStack (alignment: .leading)
                        {
                            HStack
                            {
                                Spacer()
                                
                                VStack
                                {
                                    
                                }
                                
                                Spacer()
                            }
                            
                            
                            //Verde Icono y titulo-------
                            HStack
                            {
                                Image("Cverde")
                                    .resizable()
                                    .frame(width: 80, height: 100)
                                
                                Text("Organico")
                                    .font(.custom("Montserrat-Bold", size: 40))
                                    .foregroundColor(.black)
                                    .frame(width: 200, height: 40)
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(20.0)
                                    .padding(.top)
                            }
                            .padding()
                            .shadow(color: Color.black.opacity(0.1), radius: 8, x: 2, y: 6)
                            .frame(maxHeight: .infinity, alignment: .bottom)
                            
                            //ScrollHorizontal
                            ScrollView (.horizontal, showsIndicators: false)
                            {
                                HStack
                                {
                                    ForEach(0 ..< 4)
                                    { index in
                                        NavigationLink (
                                            destination: P11(),
                                            label: {
                                                ElementosVerdeView(image: Image("Cverde\(index + 1)"), size: 210) })
                                        .navigationBarHidden(true)
                                        .foregroundColor(.black)
                                    }
                                    .padding(.trailing)
                                }
                                .padding(.horizontal)
                            }
                            
                            
                            //Azul Icono y titulo---------
                            HStack
                            {
                                Image("Cazul")
                                    .resizable()
                                    .frame(width: 80, height: 100)
                                
                                Text("Plastico")
                                    .font(.custom("Montserrat-Bold", size: 40))
                                    .foregroundColor(.black)
                                    .frame(width: 200, height: 40)
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(20.0)
                                    .padding(.top)
                            }
                            .padding()
                            .shadow(color: Color.black.opacity(0.1), radius: 8, x: 2, y: 6)
                            .frame(maxHeight: .infinity, alignment: .bottom)
                            
                            //ScrollHorizontal
                            ScrollView (.horizontal, showsIndicators: false)
                            {
                                HStack
                                {
                                    ForEach(0 ..< 4)
                                    { index in
                                        NavigationLink (
                                            destination: P12(),
                                            label: {
                                                ElementosAzulView(image: Image("Cazul\(index + 1)"), size: 210) })
                                        .navigationBarHidden(true)
                                        .foregroundColor(.black)
                                    }
                                    .padding(.trailing)
                                }
                                .padding(.horizontal)
                            }
                            
                            //Rojo Icono y titulo-------
                            HStack
                            {
                                Image("Crojo")
                                    .resizable()
                                    .frame(width: 80, height: 100)
                                
                                Text("Vidrio")
                                    .font(.custom("Jost-Bold", size: 40))
                                    .frame(width: 200, height: 40)
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(20.0)
                                    .padding(.top)
                            }
                            .padding()
                            .shadow(color: Color.black.opacity(0.1), radius: 8, x: 2, y: 6)
                            .frame(maxHeight: .infinity, alignment: .bottom)
                            
                            //ScrollHorizontal
                            ScrollView (.horizontal, showsIndicators: false)
                            {
                                HStack
                                {
                                    ForEach(0 ..< 4)
                                    { index in
                                        NavigationLink (
                                            destination: P13(),
                                            label: {
                                                ElementosRojoView(image: Image("Crojo\(index + 1)"), size: 210) })
                                        .navigationBarHidden(true)
                                        .foregroundColor(.black)
                                    }
                                    .padding(.trailing)
                                }
                                .padding(.horizontal)
                            }
                            
                            //Amarillo Icono y titulo---------
                            HStack
                            {
                                Image("Camarillo")
                                    .resizable()
                                    .frame(width: 80, height: 100)
                                
                                Text("Papeles")
                                    .font(.custom("Jost-Bold", size: 40))
                                    .frame(width: 200, height: 40)
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(20.0)
                                    .padding(.top)
                            }
                            .padding()
                            .shadow(color: Color.black.opacity(0.1), radius: 8, x: 2, y: 6)
                            .frame(maxHeight: .infinity, alignment: .bottom)
                            
                            //ScrollHorizontal
                            ScrollView (.horizontal, showsIndicators: false)
                            {
                                HStack
                                {
                                    ForEach(0 ..< 4)
                                    { index in
                                        NavigationLink (
                                            destination: P14(),
                                            label: {
                                                ElementosAmarilloView(image: Image("Camarillo\(index + 1)"), size: 210) })
                                        .navigationBarHidden(true)
                                        .foregroundColor(.black)
                                    }
                                    .padding(.trailing)
                                }
                                .padding(.horizontal)
                            }
                        }
                        Image("Fondoabajo")
                    }
                }
                
                //Barra de vistas
                
                HStack
                {
                    NavigationLink(destination: P12()){
                        BotonNavBarItem(image: Image("i1")){}
                    }
                    NavigationLink(destination: P12()){
                        BotonNavBarItem(image: Image("i2")){}
                    }
                    NavigationLink(destination: P12()){
                        BotonNavBarItem(image: Image("i3")){}
                    }
                    BotonNavBarItem(image: Image("i4")){}
                    BotonNavBarItem(image: Image("i5")){}
                }
                .padding()
                .background(Color(hex: "#E7F0DD"))
                .clipShape(Capsule())
                .padding()
                .shadow(color: Color.black.opacity(0.15), radius: 8, x: 2, y: 6)
                .frame(maxHeight: .infinity, alignment: .bottom)
                
            }
        }
    }
}





struct P1_Preview: PreviewProvider{
    static var previews: some View
    {
        HomeS()
    }
}

//Barra inferior
struct BotonNavBarItem: View {
    let image: Image
    let action: ()-> Void
    
    var body: some View {
        
        Button(action: action, label: {
            image
                .frame(maxWidth: .infinity)
        })
    }
}

//Texto superior
struct TextoArriba: View {
    var body: some View {
        Text("    ¡Hora de")
            .font(.custom("Montserrat-Regular", size: 38))
            .foregroundColor(.black)
        + Text("\n Reciclar!")
            .font(.custom("Montserrat-Black", size: 45))
            .foregroundColor(.black)    }
}



//Verde
struct ElementosVerdeView: View {
    
    let image: Image
    let size: CGFloat
    
    var body: some View {
        VStack
        {
            
            image
                .resizable()
                .frame(width: size, height: 200 * (size/210))
                .cornerRadius(20.0)
        }
        .frame(width: size)
        .padding()
        .background(Color(hex: "#E7E7E7"))
        .cornerRadius(20.0)
    }
}



//Azul
struct ElementosAzulView: View {
    
    let image: Image
    let size: CGFloat
    
    var body: some View {
        VStack
        {
            image
                .resizable()
                .frame(width: size, height: 200 * (size/210))
                .cornerRadius(20.0)
                
        }
        .frame(width: size)
        .padding()
        .background(Color(hex: "#E7E7E7"))
        .cornerRadius(20.0)
    }
}

//Rojo
struct ElementosRojoView: View {
    
    let image: Image
    let size: CGFloat
    
    var body: some View {
        VStack
        {
            image
                .resizable()
                .frame(width: size, height: 200 * (size/210))
                .cornerRadius(20.0)
        }
        .frame(width: size)
        .padding()
        .background(Color(hex: "#E7E7E7"))
        .cornerRadius(20.0)
    }
}

//Amarillo
struct ElementosAmarilloView: View {
    
    let image: Image
    let size: CGFloat
    
    var body: some View {
        VStack
        {
            image
                .resizable()
                .frame(width: size, height: 200 * (size/210))
                .cornerRadius(20.0)
            
        }
        .frame(width: size)
        .padding()
        .background(Color(hex: "#E7E7E7"))
        .cornerRadius(20.0)
    }
}
