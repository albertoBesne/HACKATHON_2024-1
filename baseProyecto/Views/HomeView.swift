//
//  HomeView.swift
//  baseProyecto
//
//  Created by CEDAM01 on 05/12/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Rectangle().ignoresSafeArea().frame(width: 600, height: 200).position(x: 200).foregroundColor(Color("VerdeD"))
                ScrollView {
                    VStack {
                        
                    }.frame(width: 340, height: 150)
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
                    HStack {
                        Button {
                            //
                        } label: {
                            Text("Resumen Semanal")
                                .font(.caption2)
                                .foregroundColor(.white)
                                .bold()
                                .padding(.horizontal, 20)
                                .padding(.vertical, 5)
                                .background(Color("VerdeF"))
                                .cornerRadius(30)
                        }
                        Button {
                            //
                        } label: {
                            Text("Recicla y reutiliza")
                                .font(.caption2)
                                .foregroundColor(.black)
                                .bold()
                                .padding(.horizontal, 20)
                                .padding(.vertical, 5)
                                .background(.gray.opacity(0.5))
                                .cornerRadius(30)
                        }
                        Button {
                            //
                        } label: {
                            Text("Noticias")
                                .font(.caption2)
                                .foregroundColor(.black)
                                .bold()
                                .padding(.horizontal, 20)
                                .padding(.vertical, 5)
                                .background(.gray.opacity(0.5))
                                .cornerRadius(30)
                        }
                    }.padding(.vertical, 10)
                    ZStack {
                        //
                    }.frame(width: 320, height: 180)
                        .background(.gray.opacity(0.3))
                        .cornerRadius(10)
                    HStack {
                        ZStack {
                            //
                        }.frame(width: 200, height: 130)
                            .background(.gray.opacity(0.3))
                            .cornerRadius(10)
                        ZStack {
                            //
                        }.frame(width: 110, height: 130).background(.gray.opacity(0.3)).cornerRadius(10)
                        
                    }
                    Spacer()
                }.toolbar {
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
