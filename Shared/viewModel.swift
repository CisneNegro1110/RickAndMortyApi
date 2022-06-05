//
//  viewModel.swift
//  RickAndMortyApi
//
//  Created by Jesús Francisco Leyva Juárez on 04/06/22.
//

import Foundation

class viewModel: ObservableObject {
    @Published var datos = [model]()
    
    func fetchData() async {
        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else {
            print("Error con el url")
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if let decoderData = try? JSONDecoder().decode([model].self, from: data) {
                DispatchQueue.main.async {
                    self.datos = decoderData
                }
            }
        } catch {
            print("Error con los datos")
        }
    }
}
