//
//  TrashView.swift
//  SignaAmbientVR
//
//  Created by CEDAM07 on 06/12/23.
//

import SwiftUI
import RealityKit
import ARKit

struct TrashView : View {
    var body: some View {
        // Este va al final, aquí se carga la vista que regresa todo el despapaye de abajo
        VStack {
            TrashARViewContainer().edgesIgnoringSafeArea(.all) // Contenedor de realidad aumentada
            
            ScrollView {
                VStack {
                    Text("Basura (Reciclaje)")
                        .font(.title)
                        .foregroundColor(.customGreen)
                        .padding(.bottom, 10)
                    // Esto es independiente al modelo, es puro texto, si esto falta, el modelo carga con normalidad
                    Text("Organicos(Restos de Comida o de Jardinería)")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
                    Text("Pueden ser restos de verdura, hortalizas y frutas, huesos, restos de ramas, restos de café y té")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
                    Text("Inorganicos Reciclables(Se pueden utilizar para producir nuevos artículos)")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
                    Text("Puede ser vidrio, metales, plásticos, papel, cartón")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
                    Text("Inorgánicos No Reciclables(Residuos difíciles de reciclar)")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
                    Text("Como lo son colillas de cigarro, toallas sanitarias, Bolsas de frituras, unicelulares, calzado")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
                    Text("Manejo Especial y Voluminosos(Residuos Domésticos de gran tamaño)")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
                    Text("Como celulares, computadoras, muebles rotos, refrigeradores")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
                }
                .padding()
                // .frame(maxHeight: 200)
                .fixedSize()
            }
            .lineLimit(5)
            .font(.system(size: 18))
            
        }
    }
}

struct TrashARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        // Esta línea viene por defecto, no moverla, básicamente configura la vista de realidad aumentada
        let arView = ARView(frame: .zero)
        
        // Cargar el modelo, las palabras pino, tanto la de "let" y la que está entre comillas, pueden cambiarse dependiendo el modelo que vayas a cargar, si el modelo se llama "jacaranda" es recomendable poner em ambos lugares "jacaranda"
        let trash = try! ModelEntity.load(named: "trash")
        
        // Inicializar un objeto del tipo AnchorEntity, para cargar el modelo
        let anchorEntity = AnchorEntity()
        
        // Agregar el modelo a la entidad que creamos un paso arriba
        anchorEntity.addChild(trash)
        
        // cargamos la entidad a la escena de realidad aumentada
        arView.scene.anchors.append(anchorEntity)

        return arView // regresa la vista de realidad aumentada que carga en el paso final
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#Preview {
    TrashView()
}
