import SwiftUI
import RealityKit
import ARKit

struct FresnoView : View {
    var body: some View {
        FresnoARViewContainer().edgesIgnoringSafeArea(.all)
        
        VStack {
            Text("Fresno")
                .font(.title)
                .foregroundColor(.customGreen)
                .padding(.bottom, 10)
            Text("Nombre Científico:Faxinus oleaceae")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
            Text("Días de Riego:2 veces por semana")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
            Text("Tamaño: tiene una altura promedio de 15 metros")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
            Text("Es un árbol que se adapta a cualquier ambiente y tipo de suelo. Aguanta muy bien el frio invierno siendo capaz de vivir entre los 80 y 100 años")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
            Text("Su gran tamaño contrasta con sus pequeñas hojas que brotan de sus ramas convirtiéndolo en una de las especies arbóreas más frondosas de nuestra geografía")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
            Text("Tienen las hojas compuestas, hechas  para tocar a más cantidad de la luz del día en los lugares umbríos")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
        }
        .padding(20)
        .lineLimit(5)
        .font(.system(size: 12))
    }
}



struct FresnoARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Cargar el modelo, las palabras pino, tanto la de "let" y la que está entre comillas, pueden cambiarse dependiendo el modelo que vayas a cargar, si el modelo se llama "jacaranda" es recomendable poner em ambos lugares "jacaranda"
        let fresno = try! ModelEntity.load(named: "Fresno")
        
        // Inicializar un objeto del tipo AnchorEntity, para cargar el modelo
        let anchorEntity = AnchorEntity()
        
        // Agregar el modelo a la entidad que creamos un paso arriba
        anchorEntity.addChild(fresno)
        
        // cargamos la entidad a la escena de realidad aumentada
        arView.scene.anchors.append(anchorEntity)

        return arView // regresa la vista de realidad aumentada que carga en el paso final
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#Preview {
    FresnoView()
}
