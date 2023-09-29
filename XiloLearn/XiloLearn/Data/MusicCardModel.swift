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
}

extension MusicCardModel {
    
    static let sampleData: [MusicCardModel] = [  //   static let sampleData: [DailyScrum] =
        MusicCardModel(title: "Anunciação",
                       artist: "Alceu Valença",
                       durantion: 0.34,
                       categorie: "pop",
                       favoriteToggles: false
                      ),
        
        MusicCardModel(title: "Força Estranha",
                       artist: "Gal Costa",
                       durantion: 0.48,
                       categorie: "pop",
                       favoriteToggles: false
                      ),
        
        MusicCardModel(title: "Não quero dinheiro",
                       artist: "Tim Maia",
                       durantion: 0.45,
                       categorie: "pop",
                       favoriteToggles: false
                      ),
        
        MusicCardModel(title: "Bad Romance",
                       artist: "Lady Gaga",
                       durantion: 1.15,
                       categorie: "pop",
                       favoriteToggles: true
                      ),
        
        MusicCardModel(title: "Bella Ciao",
                       artist: "Fonola Band",
                       durantion: 0.45,
                       categorie: "classical",
                       favoriteToggles: true
                      ),
        
        MusicCardModel(title: "Living'On A Prayer",
                       artist: "Bon Jovi",
                       durantion: 0.38,
                       categorie: "rock",
                       favoriteToggles: true
                      ),
        
        MusicCardModel(title: "Under Pressure",
                       artist: "Queen, David Bowie",
                       durantion: 0.44,
                       categorie: "rock",
                       favoriteToggles: true
                      ),
        
       
    ]
}
