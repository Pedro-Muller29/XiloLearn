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
        
        MusicCardModel(title: "London Bridge Is Falling Down",
                       artist: "Popular Song",
                       durantion: 0.43,
                       categorie: "classical",
                       favoriteToggles: true,
                       imageName: "LondonBridge",
                       song: LibraryOfSongs.londonBridgeIsFallingDown
                      ),
        
        MusicCardModel(title: "Mary had a Little Lamb",
                       artist: "Sarah Josepha Hale",
                       durantion: 0.27,
                       categorie: "classical",
                       favoriteToggles: true,
                       imageName: "MaryhadALittleLamb",
                       song: LibraryOfSongs.MaryHadALittleLamb
                      ),
        
        MusicCardModel(title: "Bad Romance",
                             artist: "Lady Gaga",
                             durantion: 1.59,
                             categorie: "pop",
                             favoriteToggles: false,
                             imageName: "Gaga",
                             song: LibraryOfSongs.badRomance
                            ),
              
              
              MusicCardModel(title: "Bella Ciao",
                                   artist: "Fonola Band",
                                   durantion: 0.45,
                                   categorie: "classical",
                                   favoriteToggles: true,
                                   imageName: "Fanola",
                                   song: LibraryOfSongs.belaCiao
                                  ),
              
              MusicCardModel(title: "Living'On A Prayer",
                                   artist: "Bon Jovi",
                                   durantion: 0.38,
                                   categorie: "rock",
                                   favoriteToggles: true,
                                   imageName: "BonJovi",
                                   song: LibraryOfSongs.livingOnAPrayer
                                  ),
              
              MusicCardModel(title: "Força Estranha",
                                     artist: "Gal Costa",
                                     durantion: 0.48,
                                     categorie: "pop",
                                     favoriteToggles: false,
                                     imageName: "Gal",
                                     song: LibraryOfSongs.forcaEstranha)
        
            ]
}
