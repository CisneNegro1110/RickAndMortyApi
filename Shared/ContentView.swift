//
//  ContentView.swift
//  Shared
//
//  Created by Jesús Francisco Leyva Juárez on 04/06/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var vm = viewModel()
    var body: some View {
        NavigationView {
            List(vm.datos.results, id: \.id) { personaje in
                HStack {
                    let urlImage = URL(string: personaje.image)
                    AsyncImage(url: urlImage) { image in
                        image
                            .resizable()
                            .scaledToFill()
                    }
                placeholder: {
                    Color.purple.opacity(0.1)
                }
                .frame (width: 80, height: 80)
                .cornerRadius(20)
                    
                    VStack(alignment: .leading) {
                        Text(personaje.name)
                            .font(.headline)
                            .foregroundColor(.black)
                        Text(personaje.type)
                            .font(.body)
                    }
                }.padding()
            }
            .navigationTitle("Rick & Morty")
        }
        .task{
            await vm.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
