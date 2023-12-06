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
            
            VStack {
                // Esto es independiente al modelo, es puro texto, si esto falta, el modelo carga con normalidad
                Text("Organicos(Restos de Comida o de Jardinería)")
                Text("-Huesos")
                Text("-Cascaron de huevo")
                Text("-Restos de verdura, hortalizas y frutas")
                Text("-Restos de jardinería hojarascas y ramas")
                Text("-Restos de cafe y té(incluidos filtros de papel)")
                Text("Inorganicos Reciclables(Se pueden utilizar para producir nuevos artículos)")
                Text("-Vidrio")
                Text("-Metales")
                Text("-Plásticos")
                Text("-Papel y Carton")
                Text("-Ropa y textiles")
                Text("-Envases tetrapack")
                Text("Inorgánicos No Reciclables(Residuos difíciles de reciclar)")
                Text("-Colillas de cigarro")
                Text("-Toallas Sanitarias")
                Text("-Bolsas de frituras")
                Text("-Poliestireno expandido(Unicel)")
                Text("-Curitas")
                Text("-Calzado")
                Text("Manejo Especial y Voluminosos(Residuos Domesticos de gran tamaño)")
                Text("-Computadoras")
                Text("-Celulares")
                Text("-Colchones")
                Text("-Muebles rotos")
                Text("-Televisores")
                Text("-Lavadoras")
                Text("-Refrigeradores")
            }
            .padding()
            .lineLimit(6)
            // .frame(maxHeight: 200)
            .fixedSize()
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
