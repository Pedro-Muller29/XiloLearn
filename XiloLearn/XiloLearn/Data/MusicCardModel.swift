//
//  MusicCardModel.swift
//  XiloLearn
//
//  Created by Alexandre Lemos da Silva on 27/09/23.
//

import Foundation
import SwiftUI

enum Categories: String, CaseIterable, Identifiable {   // << type !!
    var id: Self { self }
    
    case rock, Country, Pop, Classical   // << known variants
    
    var retorno: some Any { // corresponding view !!
        switch self {
        case .rock:
            return "rock"
            
        case .Country:
            return "country"
            
        case .Pop:
            return "pop"
            
        case .Classical:
            return "classical"
        }
    }
    
}

struct MusicCardModel: Hashable {
    var title: String
    var artist: String
    var durantion: Float
    var categorie: String
    var favoriteToggles: Bool
    var imageName: String?
    var song: [XiloKeys]?
}

extension MusicCardModel {
    
    static let sampleData: [MusicCardModel] = [  //   static let sampleData: [DailyScrum] =
        MusicCardModel(title: "Anunciação",
                       artist: "Alceu Valença",
                       durantion: 3.39,
                       categorie: "pop",
                       favoriteToggles: false,
                       imageName: "Alceu-Valenca",
                       song: LibraryOfSongs.anunciacao
                      ),
        
        MusicCardModel(title: "Não Quero Dinheiro",
                       artist: "Tim Maia",
                       durantion: 2.34,
                       categorie: "pop",
                       favoriteToggles: false,
                       imageName: "NaoQueroDinheiro",
                       song: LibraryOfSongs.naoQueroDinheiro
                      ),
        
        MusicCardModel(title: "Bohemian Rhapsody",
                       artist: "Queen",
                       durantion: 2.34,
                       categorie: "rock",
                       favoriteToggles: false,
                       imageName: "Queen",
                       song: LibraryOfSongs.bohemianRhapsody
                      ),
        
        MusicCardModel(title: "Musica C",
                       artist: "olivia rodrigo",
                       durantion: 2.34,
                       categorie: "country",
                       favoriteToggles: true
                      ),
        
        MusicCardModel(title: "Musica D",
                       artist: "olivia rodrigo",
                       durantion: 2.34,
                       categorie: "classical",
                       favoriteToggles: true
                      ),
        
        MusicCardModel(title: "Musica E",
                       artist: "olivia rodrigo",
                       durantion: 2.34,
                       categorie: "classical",
                       favoriteToggles: true
                      ),
        
        MusicCardModel(title: "Musica F",
                       artist: "olivia rodrigo",
                       durantion: 2.34,
                       categorie: "classical",
                       favoriteToggles: true
                      ),
        
        MusicCardModel(title: "Musica G",
                       artist: "olivia rodrigo",
                       durantion: 2.34,
                       categorie: "pop",
                       favoriteToggles: true
                      ),
        
        MusicCardModel(title: "Musica H",
                       artist: "olivia rodrigo",
                       durantion: 2.34,
                       categorie: "country",
                       favoriteToggles: true
                      ),
    ]
}
