//
//  ContentView.swift
//  Chapter7StateObjectApp
//
//  Created by Timur on 27.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var song = SongModel()
    
    var body: some View {
        VStack {
            Text("Song \(song.name)!")
            Text("Artist:  \(song.artist)")
            Text("Duration:  \(Int(song.duration))")
            Text("Year: \(Int(song.year))")

            DisplayTextField()
        }.environmentObject(song)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(song: SongModel())
    }
}

class SongModel: ObservableObject{
    @Published var name: String = ""
    @Published var artist: String = ""
    @Published var duration: Double = 0.0
    @Published var year: Double = 2000
}
