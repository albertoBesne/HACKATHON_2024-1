import SwiftUI
import RealityKit
import ARKit

struct PumaView : View {
    var body: some View {
        PumaARViewContainer().edgesIgnoringSafeArea(.all)
        
        VStack {
            Text("Puma")
                .font(.title)
                .foregroundColor(.customGreen)
                .padding(.bottom, 10)
            Text("Mamífero carnívoro de la familia Felidae nativo de América")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
            Text("Es adaptable y generalista, por lo que vive en los principales biomas de toda América")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
            Text("Su tamaño es algo mayor que el del leopardo, aunque está más emparentado con los pequeños felinos, ya que, a diferencia de los grandes félidos del género Panthera, que pueden rugir")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
            Text("Prefiere hábitat con vegetación densa durante las horas de acecho, pero puede vivir en zonas abiertas")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
            Text("El puma es territorial y tiene una baja densidad de población")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
            Text("Se trata de un felino solitario que por lo general evita a las personas y los ataques a humanos son raros")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
        }
        .padding(20)
        .lineLimit(5)
        .font(.system(size: 12))
    }
}

struct PumaARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Cargar el modelo, las palabras pino, tanto la de "let" y la que está entre comillas, pueden cambiarse dependiendo el modelo que vayas a cargar, si el modelo se llama "jacaranda" es recomendable poner em ambos lugares "jacaranda"
        let puma1 = try! ModelEntity.load(named: "Puma")
        
        // Inicializar un objeto del tipo AnchorEntity, para cargar el modelo
        let anchorEntity = AnchorEntity()
        
        // Agregar el modelo a la entidad que creamos un paso arriba
        anchorEntity.addChild(puma1)
        
        // cargamos la entidad a la escena de realidad aumentada
        arView.scene.anchors.append(anchorEntity)

        return arView // regresa la vista de realidad aumentada que carga en el paso final
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#Preview {
    PumaView()
}
