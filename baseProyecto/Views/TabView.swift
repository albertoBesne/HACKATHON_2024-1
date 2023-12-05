//
//  TabView.swift
//  baseProyecto
//
//  Created by CEDAM01 on 05/12/23.
//
/*
import SwiftUI

struct TabView: View {
    @State private var selectedTab = 1
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedTab){
                Text("dasdas").tag(1)
                Text("afdsfad").tag(2)
                Text("Shalalala").tag(3)
                Text("fsdaf").tag(4)
            }
            VStack {
                Spacer()
                ZStack {
                    HStack{
                        myTabButton(title: "Home", tags: 1, icon: "house").padding(.leading, 20)
                        myTabButton(title: "Options", tags: 2, icon: "slider.horizontal.3")
                        Spacer()
                        myTabButton(title: "Profile", tags: 3, icon: "seal")
                        myTabButton(title: "Lalala", tags: 4, icon: "person").padding(.trailing, 20)
                    }.frame(width: 350, height: 65).background(.green).cornerRadius(40)
                    Button{
                        
                    } label: {
                        Image(systemName: "qrcode.viewfinder")
                            .frame(width: 90, height: 90)
                            .background(.white)
                            .cornerRadius(50)
                            .shadow(radius: 10)
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }.frame(width: 90, height: 90).position(x: 195, y: 25)
                    
                }.frame(height: 100)
            }
        }
    }
    
    func myTabButton(title: String, tags: Int, icon: String) -> some View {
        VStack{
            Button{
                withAnimation{ selectedTab = tags
                }
            }label: {
                Image(systemName: icon).foregroundColor(selectedTab == tags ? .white : .secondary)
            }.frame(maxWidth: 50)
                .foregroundColor(selectedTab == tags ? .white : .secondary)
            
            Color(selectedTab == tags ? .blue : .clear)
                .frame(width: 30, height: 5).cornerRadius(3)
        }
    }
}

#Preview {
    TabView()
}
*/
