//
//  HomeView.swift
//  baseProyecto
//
//  Created by CEDAM01 on 05/12/23.
//

import SwiftUI

struct HomeView: View 
{
    @State private var selectedButton = 0
    
    var body: some View
    {
        NavigationStack 
        {
            ZStack 
            {
                Rectangle().ignoresSafeArea().frame(width: 600, height: 200).position(x: 200).foregroundColor(Color("VerdeD"))
                ScrollView 
                {
                    VStack 
                    {
                        
                    }
                    .frame(width: 340, height: 150)
                    .background(.white)
                    .cornerRadius(10)
                    .padding(.top, 20)
                    .frame(width: 350, height: 200)
                    .shadow(color: .gray, radius: 10)
                    HStack
                    {
                        Circle()
                            .frame(width: 60)
                        VStack(alignment: .leading)
                        {
                            Text("Hola Isaac")
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("¿Cómo mejoraremos el mundo hoy?")
                                .font(.caption)
                            Text("156 puntos")
                                //.padding(.vertical, 5)
                        }
                        .padding(.horizontal, 15)
                    }
                    HStack 
                    {
                        Button {
                            selectedButton = 0
                        } label: {
                            Text("Resumen Semanal")
                                .font(.caption2)
                                .foregroundColor((selectedButton == 0) ? .white : .black)
                                .bold()
                                .padding(.horizontal, 20)
                                .padding(.vertical, 5)
                                .background((selectedButton == 0) ? Color("VerdeF") : .gray.opacity(0.5))
                                .cornerRadius(30)
                        }
                        Button {
                            selectedButton = 1
                        } label: {
                            Text("Recicla y reutiliza")
                                .font(.caption2)
                                .foregroundColor((selectedButton == 1) ? .white : .black)
                                .bold()
                                .padding(.horizontal, 20)
                                .padding(.vertical, 5)
                                .background((selectedButton == 1) ? Color("VerdeF") : .gray.opacity(0.5))
                                .cornerRadius(30)
                        }
                        Button {
                            selectedButton = 2
                        } label: {
                            Text("Noticias")
                                .font(.caption2)
                                .foregroundColor((selectedButton == 2) ? .white : .black)
                                .bold()
                                .padding(.horizontal, 20)
                                .padding(.vertical, 5)
                                .background((selectedButton == 2) ? Color("VerdeF") : .gray.opacity(0.5))
                                .cornerRadius(30)
                        }
                    }
                    .padding(.vertical, 10)
                    
                    ZStack()
                    {
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.white, Color("VerdeD")]),
                                    startPoint: .leading,
                                    endPoint: .trailing)
                            )
                            .frame(width: 380, height: 150)
                        HStack
                        {
                            
                            VStack(alignment: .leading)
                            {
                                Text("Puntos obtenido en la última semana")
                                    .font(.caption)
                                Text("89 puntos")
                                    .foregroundColor(Color("Rojo"))
                                Text("Día con mayor puntaje")
                                    .font(.caption)
                                Text("Martes con 70 puntos")
                                    .foregroundColor(Color("VerdeD"))
                                Text("Materiales reciclados")
                                    .font(.caption)
                                Text("Metal/Plasticos")
                                    .foregroundColor(Color("VerdeF"))
                            }
                            .padding(.horizontal, 30)
                            VStack(alignment: .center)
                            {
                                Circle()
                                    .frame(width: 60)
                                Text("Nivel 1")
                                    .foregroundStyle(Color("Aqua"))
                            }
                        }
                    }
                    
                    ZStack
                    {
                        //
                    }.frame(width: 320, height: 180)
                        .background(.gray.opacity(0.3))
                        .cornerRadius(10)
                    HStack 
                    {
                        ZStack 
                        {
                            //
                        }.frame(width: 200, height: 130)
                            .background(.gray.opacity(0.3))
                            .cornerRadius(10)
                        ZStack 
                        {
                            //
                        }.frame(width: 110, height: 130).background(.gray.opacity(0.3)).cornerRadius(10)
                        
                    }
                    Spacer()
                }
                .toolbar {
                    ToolbarItemGroup(placement: .cancellationAction) {
                        Button {
                            //
                        } label: {
                            Image("logob-Poke")
                                .renderingMode(.template)
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.white)
                                .frame(width: 60)
                        }
                    }
                }.toolbar {
                    ToolbarItemGroup(placement: .automatic) {
                        Button {
                            //
                        } label: {
                            Image("icono-Notificaciones")
                                .renderingMode(.template)
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.white)
                                .frame(width: 40)
                        }
                    }
            }.navigationBarBackButtonHidden()
            }
        }
    }
}

#Preview {
    HomeView()
}
