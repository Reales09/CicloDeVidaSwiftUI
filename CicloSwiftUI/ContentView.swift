//
//  ContentView.swift
//  CicloSwiftUI
//
//  Created by Reales Rectoro Myles Clarence on 31/03/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var contenido = ""
    @State private var show = true

    var body: some View {
        VStack {
            if show{
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                    .padding()
                    .onAppear{
                        print("Aparecio texto de bienvenida")
                    }
                    .onDisappear{
                        print("desaparecio texto de bienvenida")
                    }
            }

            Button(action:{
                self.show.toggle()
            }){
                Text("Desaparecer texto")
            }
            .onAppear{
                print("Aparecio el boton")
            }
            
            TextField("Titulo del texto", text: $contenido)
                .onAppear{
                    self.contenido = "Contenido que viene desde otra view"
                }
           
        }.onAppear{
            print("Aparecio VStack")
        }

    }
}

#Preview {
    ContentView()
}
