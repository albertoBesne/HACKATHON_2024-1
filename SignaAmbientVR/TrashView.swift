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
                    // Esto es independiente al modelo, es puro texto, si esto falta, el modelo carga con normalidad
                    Text("Organicos(Restos de Comida o de Jardinería)")
                    Text("Pueden ser restos de verdura, hortalizas y frutas, huesos, restos de ramas, restos de café y té")
                    Text("Inorganicos Reciclables(Se pueden utilizar para producir nuevos artículos)")
                    Text("Puede ser vidrio, metales, plásticos, papel, cartón")
                    Text("Inorgánicos No Reciclables(Residuos difíciles de reciclar)")
                    Text("Como lo son colillas de cigarro, toallas sanitarias, Bolsas de frituras, unicelulares, calzado")
                    Text("Manejo Especial y Voluminosos(Residuos Domésticos de gran tamaño)")
                    Text("Como celulares, computadoras, muebles rotos, refrigeradores")
                }
                .padding()
                // .frame(maxHeight: 200)
                .fixedSize()
            }
            .padding(20)
            .lineLimit(5)
            .font(.system(size: 12))
            
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
