//
//  LoginView.swift
//  baseProyecto
//
//  Created by CEDAM16 on 05/12/23.
//

import SwiftUI

struct LoginView: View 
{
    @State var email = ""
    @State var password = ""
    
    var body: some View
    {
        NavigationStack
        {
            ZStack
            {
                VStack
                {
                    Circle()
                        .scaledToFit()
                        .frame(width: 150)
                    Text("Poketrash")
                        .font(.title)
                        .textCase(.uppercase)
                    TextField("Email", text: $email)
                        .frame(width: 300)
                        .underlineTextField()
                        .padding(.vertical)
                    TextField("Contraseña", text: $password)
                        .frame(width: 300)
                        .underlineTextField()
                    Text("Olvide mi contraseña")
                        .font(.caption)
                        .foregroundColor(.blue)
                        .padding(.leading, 180)
                    NavigationLink {
                        //
                    } label: {
                        Text("Log in")
                            .font(.body)
                            .frame(width: 200, height: 35)
                            .foregroundColor(.white)
                            .background(.gray)
                            .cornerRadius(15)
                            .padding()
                    }
                    Text("Continua con")
                        .font(.title3)
                    HStack
                    {
                        Spacer()
                        Rectangle()
                            .scaledToFit()
                            .frame(width: 90)
                            .padding(.horizontal)
                        Rectangle()
                            .scaledToFit()
                            .frame(width: 90)
                            .padding(.horizontal)
                        Rectangle()
                            .scaledToFit()
                            .frame(width: 90)
                            .padding(.horizontal)
                        Spacer()
                    }
                    Text("No tienes cuenta? Regístrate")
                        .font(.caption2)
                        .foregroundColor(.blue)
                        .padding()

                        
                    
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
