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
                Rectangle().ignoresSafeArea().frame(width: 600, height: 200).position(x: 200).foregroundColor(.gray.opacity(0.3))
                ScrollView {
                    VStack {
                        Text("Hola Yael").font(.title).bold()
                    }.frame(width: 300, height: 150)
                        .background(.white)
                        .cornerRadius(10)
                        .padding(.top, 20)
                        .frame(width: 350, height: 200)
                        .shadow(color: .gray, radius: 10)
                    HStack {
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
                        Button {
                            //
                        } label: {
                            Text("¿Cómo reciclar?")
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
                            Text("Reforesta")
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
                            Text("fsdfa")
                        }
                    }
                }.toolbar {
                    ToolbarItemGroup(placement: .automatic) {
                        Button {
                            //
                        } label: {
                            Text("fsdfa")
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
