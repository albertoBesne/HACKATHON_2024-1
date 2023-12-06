//
//  ContentView.swift
//  SignaAmbientVR
//
//  Created by CEDAM07 on 06/12/23.
//

import SwiftUI
import RealityKit
import ARKit

struct ContentView : View {
    var body: some View {
        // Este va al final, aquí se carga la vista que regresa todo el despapaye de abajo
        VStack {
            ARViewContainer().edgesIgnoringSafeArea(.all) // Contenedor de realidad aumentada
            
            VStack {
                Text("🌲 Pino")
                    .font(.title)
                    .foregroundColor(.customGreen)
                    .frame(maxWidth: .infinity, alignment: .leading)
                // Esto es independiente al modelo, es puro texto, si esto falta, el modelo carga con normalidad
                Text("Esta planta es de la familia Pinaceae") // Texto de información, aquí se puede añadir
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Nombre científico: Pinus")
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Nombre común: Pino") // Si lo agregas línea por línea, da los saltos de línea solito (el "enter" por decirlo así)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Tamaño: tiene una altura media de 25 metros aunque pueden alcanzar los 40 metros")
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Follaje: perenne (no pierde sus hojas a lo largo del año)")
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("El árbol Pino liso necesitará más agua durante los meses de verano, cuando el tiempo es más caluroso. En esa época, deberá regar esta planta aproximadamente una vez por semana en ausencia de precipitaciones. En otras épocas del año, esta planta suele sobrevivir sin agua.")
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(20)
            .lineLimit(5)
            .font(.system(size: 12))
            
        }
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        // Esta línea viene por defecto, no moverla, básicamente configura la vista de realidad aumentada
        let arView = ARView(frame: .zero)
        
        // Cargar el modelo, las palabras pino, tanto la de "let" y la que está entre comillas, pueden cambiarse dependiendo el modelo que vayas a cargar, si el modelo se llama "jacaranda" es recomendable poner em ambos lugares "jacaranda"
        let pino = try! ModelEntity.load(named: "pino")
        
        // Inicializar un objeto del tipo AnchorEntity, para cargar el modelo
        let anchorEntity = AnchorEntity()
        
        // Agregar el modelo a la entidad que creamos un paso arriba
        anchorEntity.addChild(pino)
        
        // cargamos la entidad a la escena de realidad aumentada
        arView.scene.anchors.append(anchorEntity)

        return arView // regresa la vista de realidad aumentada que carga en el paso final
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#Preview {
    ContentView()
}
