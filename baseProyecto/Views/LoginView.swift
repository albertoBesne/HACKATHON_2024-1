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
                        .foregroundColor(.black)
                        .frame(width: 300)
                        .underlineTextField()
                        .padding(.vertical)
                    TextField("Contraseña", text: $password)
                        .foregroundColor(.black)
                        .frame(width: 300)
                        .underlineTextField()
                    Text("Olvide mi contraseña")
                        .font(.caption)
                        .foregroundColor(Color("VerdeD"))
                        .padding(.leading, 180)
                    Spacer()
                    NavigationLink {
                        //
                    } label: {
                        Text("Log in")
                            .font(.body)
                            .frame(width: 300, height: 35)
                            .foregroundColor(.white)
                            .background(Color("Rojo"))
                            .cornerRadius(15)
                            .padding()
                    }
                    Spacer()
                    Text("Continua con")
                        .font(.title3)
                    HStack
                    {
                        Spacer()
                        Image("icono-Apple")
                            .frame(width: 90, height: 50)
                            .padding(.horizontal)
                        Image("icono-Facebook")
                            .frame(width: 90, height: 50)
                            .padding(.horizontal)
                        Image("icono-Google")
                            .frame(width: 90, height: 50)
                            .padding(.horizontal)
                        Spacer()
                    }
                    Spacer()
                    HStack
                    {
                        Text("¿No tienes cuenta?")
                            .font(.caption2)
                            .foregroundColor(.black)
                        Text("Regístrate")
                            .font(.caption2)
                            .foregroundColor(Color("VerdeD"))
                    }
                    

                        
                    
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
