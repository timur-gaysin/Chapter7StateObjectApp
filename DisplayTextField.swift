//
//  DisplayTextField.swift
//  Chapter7StateObjectApp
//
//  Created by Timur on 27.03.2023.
//

import SwiftUI

struct DisplayTextField: View {
    
    @ObservedObject var creature: SongModel
    
    var body: some View {
        VStack{
            HStack{
                Text("Name: ")
                TextField("Type a name song here", text: $creature.name)
            }
            HStack{
                Text("Artist name: ")
                TextField("Type an artist name here", text:$creature.artist)
            }
            HStack{
                Text("Duration")
                Slider(value: $creature.duration, in: 0...1200, step: 1.0)
            }
            HStack{
                Text("Year: ")
                Slider(value: $creature.year, in: 1900...2100, step: 1.0)
            }
        }
    }
}

struct DisplayTextField_Previews: PreviewProvider {
    static var previews: some View {
        DisplayTextField(creature: SongModel())
    }
}
