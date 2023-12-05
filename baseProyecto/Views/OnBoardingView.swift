//
//  OnBoardingView.swift
//  baseProyecto
//
//  Created by CEDAM01 on 05/12/23.
//

import SwiftUI

struct OnBoardingView: View {
    @State var indexSelected = 1
    @State var showNavigation = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Circle().frame(width: 200)
                Text("Noticias").font(.largeTitle).bold()
                Text("Noticias y recomendaciones interesantes de reciclaje")
                HStack {
                    if indexSelected == 1 {
                        ZStack{ }.frame(width: 30, height: 10).background(.green).cornerRadius(5)
                    } else {
                        Circle().frame(width: 10).foregroundColor(.gray)
                    }
                    if indexSelected == 2 {
                        ZStack{ }.frame(width: 30, height: 10).background(.green).cornerRadius(5)
                    } else {
                        Circle().frame(width: 10).foregroundColor(.gray)
                    }
                    if indexSelected == 3 {
                        ZStack{ }.frame(width: 30, height: 10).background(.green).cornerRadius(5)
                    } else {
                        Circle().frame(width: 10).foregroundColor(.gray)
                    }
                    if indexSelected == 4 {
                        ZStack{ }.frame(width: 30, height: 10).background(.green).cornerRadius(5)
                    } else {
                        Circle().frame(width: 10).foregroundColor(.gray)
                    }
                }.padding(.bottom, 110)
                HStack {
                    NavigationLink {
                        //
                    } label: {
                        Text("Skip")
                    }
                    Spacer()
                    ZStack {
                        if showNavigation {
                            NavigationLink {
                                //
                            } label: {
                                Image(systemName: "house").frame(width: 50, height: 50).background(.gray.opacity(0.4)).cornerRadius(25)
                            }
                        } else {
                            Button {
                                if indexSelected < 4 {
                                    withAnimation {
                                        indexSelected += 1
                                    }
                                } else {
                                    showNavigation.toggle()
                                }
                            } label: {
                                Image(systemName: "chevron.right").frame(width: 50, height: 50).background(.gray.opacity(0.4)).cornerRadius(25)
                            }
                        }
                    }
                }.padding(.horizontal, 40).padding(.top, 40)
            }
        }
    }
}

#Preview {
    OnBoardingView()
}
