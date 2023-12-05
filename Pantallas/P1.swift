//
//  P1.swift
//  baseProyecto
//
//  Created by CEDAM17 on 05/12/23.
//

import SwiftUI

struct P1: View
{
    var body: some View
    {
        VStack
        {
            HomeS()
            
            
            
        }
        
    }
}

#Preview {
    P1()
}




struct BotonNavBarItem: View {
    
    let image: Image
    let action: ()-> Void
    
    var body: some View {
        
        Button(action: action, label: {
            image
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        })
    }
}

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
    let cosas = ["Cascara de platano", "Restos de manzanas", "Desechos de carne", "Cascaras varias"]
    
    var body: some View {
        VStack
        {
            image
                .resizable()
                .frame(width: size, height: 200 * (size/210))
                .cornerRadius(20.0)
        
            Text("\(cosas[0])")
                .font(.custom("", size: 20))
                .fontWeight(.bold)
        }
        .frame(width: size)
        .padding()
        .background(Color.white)
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
            
            Text("Elementos organicos")
                .font(.custom("", size: 20))
                .fontWeight(.bold)
        }
        .frame(width: size)
        .padding()
        .background(Color.white)
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
            
            Text("Elementos organicos")
                .font(.custom("", size: 20))
                .fontWeight(.bold)
        }
        .frame(width: size)
        .padding()
        .background(Color.white)
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
            
            Text("Elementos organicos")
                .font(.custom("", size: 20))
                .fontWeight(.bold)
        }
        .frame(width: size)
        .padding()
        .background(Color.white)
        .cornerRadius(20.0)
    }
}

struct HomeS: View {
    var body: some View {
        ZStack
        {
            Color("1b")
                .edgesIgnoringSafeArea(.all)
            
            
            ScrollView
            {
                
                
                VStack (alignment: .leading)
                {
                    
                    
                    HStack
                    {
                        Spacer()
                        
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
                        
                        Spacer()
                    }
                    
                    
                    
                    //Verde
                    HStack
                    {
                        Image("Cverde")
                            .resizable()
                            .frame(width: 80, height: 100)
                        
                        Text("Organico")
                            .font(.custom("Montserrat-Bold", size: 40))
                            .foregroundColor(Color("CVerde"))
                            .frame(width: 200, height: 40)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(20.0)
                            .padding(.top)
                    }
                    .padding()
                    
                    ScrollView (.horizontal, showsIndicators: false)
                    {
                        HStack
                        {
                            ForEach(0 ..< 4)
                            {
                                index in ElementosVerdeView(image: Image("Cverde\(index + 1)"), size: 210)
                                
                            }
                            .padding(.trailing)
                        }
                        .padding(.horizontal)
                    }
                    
                    //Azul
                    HStack
                    {
                        Image("Cazul")
                            .resizable()
                            .frame(width: 80, height: 100)
                        
                        Text("Plastico")
                            .font(.custom("Montserrat-Bold", size: 40))
                            .foregroundColor(Color("CVerde"))
                            .frame(width: 200, height: 40)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(20.0)
                            .padding(.top)
                    }
                    .padding()
                    
                    ScrollView (.horizontal, showsIndicators: false)
                    {
                        HStack
                        {
                            ForEach(0 ..< 4)
                            {
                                index in ElementosAzulView(image: Image("Cazul\(index + 1)"), size: 210)
                                
                            }
                            .padding(.trailing)
                        }
                        .padding(.horizontal)
                    }
                    
                    //Rojo
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
                    
                    ScrollView (.horizontal, showsIndicators: false)
                    {
                        HStack
                        {
                            ForEach(0 ..< 4)
                            {
                                index in ElementosRojoView(image: Image("Crojo\(index + 1)"), size: 210)
                                
                            }
                            .padding(.trailing)
                        }
                        .padding(.horizontal)
                    }
                    
                    //Amarillo
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
                    
                    ScrollView (.horizontal, showsIndicators: false)
                    {
                        HStack
                        {
                            ForEach(0 ..< 4)
                            {
                                index in ElementosAmarilloView(image: Image("Camarillo\(index + 1)"), size: 210)
                                
                            }
                            .padding(.trailing)
                        }
                        .padding(.horizontal)
                    }
                    
                }
                
                
                
                
                
                
                
                
                
                
                
                Image("R1")
                Image("R1")
                
            }
            
            
            //Barra
            
            HStack
            {
                BotonNavBarItem(image: Image("i1")){}
                BotonNavBarItem(image: Image("i2")){}
                BotonNavBarItem(image: Image("i3")){}
                BotonNavBarItem(image: Image("i4")){}
                BotonNavBarItem(image: Image("i5")){}
            }
            .padding()
            .background(Color(Color.white))
            .clipShape(Capsule())
            .padding()
            .shadow(color: Color.black.opacity(0.15), radius: 8, x: 2, y: 6)
            .frame(maxHeight: .infinity, alignment: .bottom)
            
            
        }
    }
}
