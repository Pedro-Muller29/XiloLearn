//
//  LibraryOfSongs.swift
//  XiloLearn
//
//  Created by Alexandre Lemos da Silva on 26/09/23.
//

import Foundation

/// Contains mocked songs for the Genius AI.
/// The songs are in the format: [Key], and every "Break" means wait for the time of a key.
/// I think in the the game the "Break" wont be evaluated, its just for the simons song sound better
class LibraryOfSongs {
    init(){
        
    }
    
    /// ABC american song for kids: ABCDEFG, HIJKLMNOP, QRS, TUV, WX, Y AND Z
    ///
    ///
    ///  MPB
    ///
    ///
    static var anunciacao: [XiloKeys] =
    [ .C, .D1, .E1, .F, .E1, .D1, .C, .C, .E1, .D1, .C, .D1, .D1,
      .BREAK,
      .C, .D1, .E1, .F, .E1, .D1, .C, .C, .E1, .D1, .C, .C,
      .BREAK,
      .C, .G, .A, .E1, .F, .F, .E1, .C, .D1, .D1, .C, .C, ]
    
    ///
    static var naoQueroDinheiro: [XiloKeys] =
    [.F, .F, .F, .G, .F, .D1,
     .BREAK,
     .F, .F, .F, .G, .F, .D1,
     .BREAK,
     .F, .F, .F, .G, .F, .C,
     .BREAK,
     .F, .F, .F, .G, .A, .G,
     .BREAK,
     .F, .F, .F, .G, .F, .D1,
     .BREAK,
     .F, .F, .F, .G, .F, .C,
     .BREAK,
     .F, .D1, .F, .G, .F]
    
    static var forcaEstranha: [XiloKeys] =
    [.B, .B, .A, .B, .C2, .B,
     .BREAK,
     .G, .B, .A, .B, .A,
     .BREAK,
     .G, .G, .F, .G, .A, .G, .G, .F,
     .BREAK,
     .E1, .E1, .D1, .E1, .G, .E1,
     .BREAK,
     .D1, .D1, .C, .D1, .E1,
     .BREAK,
     .E1, .G, .D1, .E1, .G, .E1, .B, .A
    ]
    
   

    
    ///Bohemian Rhapsody" by Queen:
    static var bohemianRhapsody: [XiloKeys] =
    [.F, .F, .F, .F, .F,
    .E1, .E1, .F, .E1, .D1, .C,
     .F,
     .BREAK,
     .F, .F, .G, .F, .F,
     .BREAK, .F, .D1, .D1, .D1, .D1, .C, .B,
     .D1,.D1, .BREAK, .D1, .D1, .D1, .BREAK, .D1, .D1, .D1, .F, .B, .G,
     .G, .G, .G, .G, .G, .F, .F, .D1, .D1, .D1, .D1, .C, .B, .D1, .D1, .D1, .D1, .D1, .D1, .D1, .F, .B, .G, .G, .G, .G, .G, .G, .F, .F, .G, .F, .D1, .C, .G, .A, .BREAK, .B, .B, .B, .A, .B, .B, .B, .A, .B, .G, .G, .G, .G, .G, .BREAK, .F, .BREAK, .B, .E1, .E1
    ]
    
    
    static var londonBridgeIsFallingDown: [XiloKeys] =
    [.G, .A, .G, .F, .E1, .F, .G,
     .BREAK,
     .D1, .E1, .F,
     .BREAK,
     .E1, .F, .G,
     .BREAK,
     .G, .A, .G, .F, .E1, .F ,.G,
     .BREAK,
     .D1, .G, .E1, .C,
     .BREAK,
     .D1, .E1, .F, .E1, .F, .G,
     .BREAK,
     .G, .A, .G, .F, .E1, .F, .G,
     .BREAK,
     .D1, .G, .E1, .C
     ]
    
    static var MaryHadALittleLamb: [XiloKeys] =
    [
        .E1, .D1, .C, .D1, .E1, .E1, .E1,
        .BREAK,
        .D1, .D1, .D1, .E1, .E1, .E1,
        .BREAK,
        .E1, .D1, .C, .D1, .E1, .E1, .E1,
        .BREAK,
        .E1, .D1, .D1, .E1, .D1, .C
    ]
}
