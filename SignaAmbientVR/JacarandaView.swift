import SwiftUI
import RealityKit
import ARKit

struct JacarandaView : View {
    var body: some View {
        JacarandaARViewContainer().edgesIgnoringSafeArea(.all)
        
        Text("Jacaranda")
        Text("Nombre Científico:Jacaranda mimosifolia")
        Text("Días de Riego:2 veces por semana")
        Text("Tamaño: tiene una altura media de 8 metros")
        Text("Árbol de crecimiento relativamente rápido, que resiste tanto fríos transitorios como olas de calor y florece abundantemente si crece en lugares soleados")
        Text("Sus aportaciones al ambiente son su copa, durante las lluvias, sirve como amortiguador del suelo y evita la erosión; sus raíces cooperan para que la tierra de las plantas que hay alrededor de él no se pierda, ayuda como amortiguador en cambios de temperatura, como barrera rompevientos y para atenuar el sonido.")
    }
}



struct JacarandaARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Cargar el modelo, las palabras pino, tanto la de "let" y la que está entre comillas, pueden cambiarse dependiendo el modelo que vayas a cargar, si el modelo se llama "jacaranda" es recomendable poner em ambos lugares "jacaranda"
        let jacaranda = try! ModelEntity.load(named: "jacaranda")
        
        // Inicializar un objeto del tipo AnchorEntity, para cargar el modelo
        let anchorEntity = AnchorEntity()
        
        // Agregar el modelo a la entidad que creamos un paso arriba
        anchorEntity.addChild(jacaranda)
        
        // cargamos la entidad a la escena de realidad aumentada
        arView.scene.anchors.append(anchorEntity)

        return arView // regresa la vista de realidad aumentada que carga en el paso final
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#Preview {
    JacarandaView()
}
