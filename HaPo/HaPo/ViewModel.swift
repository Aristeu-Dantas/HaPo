//
//  ViewModel.swift
//  API's
//
//  Created by Turma02-2 on 04/11/24.
//

import Foundation

class ViewModel : ObservableObject {
    @Published var chars : [HaPo] = []
    
    func fetch(){
        let task = URLSession.shared.dataTask(with: URL(string: "https://hp-api.orender.com/api/character/house/gryffindor")!){ data,_,error in do {
            self.chars = try JSONDecoder().decode([HaPo].self, from: data!)
        }catch{print(error)}
        }
        task.resume()
    }
}
