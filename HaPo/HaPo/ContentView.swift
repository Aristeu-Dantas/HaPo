//
//  ContentView.swift
//  HaPo
//
//  Created by Turma02-2 on 04/11/24.
//
import SwiftUI

struct ContentView: View {
    let personagens = [
        Personagem(name: "Harry Potter", image: "harry_potter"),
        Personagem(name: "Hermione Granger", image: "hermione_granger"),
        Personagem(name: "Ron Weasley", image: "ron_weasley"),
        Personagem(name: "Minerva McGonagall", image: "minerva_mcgonagall"),
        Personagem(name: "Rubeus Hagrid", image: "rubeus_hagrid")
    ]

    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("brasao_hogwarts")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                List(personagens) { personagem in
                    HStack {
                        Image(personagem.image)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        
                        Text(personagem.name)
                            .font(.headline)
                    }
                }
            }
        }
    }
}

struct Personagem: Identifiable {
    let id = UUID()
    let name: String
    let image: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
