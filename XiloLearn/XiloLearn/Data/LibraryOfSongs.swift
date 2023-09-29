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
    
    static var badRomance: [XiloKeys] =
    [.A, .A, .A, .A, .A, .A, .A,
     .G, .G, .G, .D1, .D1, .E1,
     .BREAK,
     .E1, .E1, .E1,
     .G, .D1, .D1, .C,
     .BREAK,
     .C, .D1, .E1, .C, .F, .E1, .F,
     .E1, .D1, .D1, .C, .C, .D1, .E1, .E1, .E1,
     .D1, .C,
    ]
    
    static var belaCiao: [XiloKeys] =
    [.E1, .A, .B, .C2, .A,
     .BREAK,
     .E1, .A, .B, .C2, .A,
     .BREAK,
     .E1, .A, .B, .C2,
     .B, .A, .C2, .A, .B,
     .E1, .E1, .E1,
     .BREAK,
     .E1, .D1, .E1, .F,
     .D1,
     .BREAK,
     .F, .E1, .D1, .F, .E1,
     .BREAK,
     .D1, .C, .B, .E1, .B, .C2, .A
    ]
    
    static var livingOnAPrayer: [XiloKeys] =
    [.C2, .BREAK, .C2, .C2, .B, .A, .G,
     .BREAK,
     .E1, .F,
     .BREAK,
     .F, .F, .E1, .C, .C, .D1,
     .BREAK,
     .C, .C, .D1, .C, .C2, .C2, .B, .A, .G,
     .BREAK,
     .E1, .F, .BREAK, .F, .F, .E1, .C, .C, .D1
    ]
    
    ///Bohemian Rhapsody" by Queen:
    static var bohemianRhapsody: [XiloKeys] =
    [.BREAK,
     .C,.C,.G,.G,.A,.A,.G,
     .BREAK,
     .F,.F,.E1,.E1,.D1,.D1,.C,
     .BREAK,
     .G,.G,.F, .E1,.E1,.D1,
     .BREAK,
     .G,.G,.F,
     .BREAK,
     .E1,.E1,.D1]
    
    
    static var a: [XiloKeys] =
    [.BREAK,
     .C,.C,.G,.G,.A,.A,.G,
     .BREAK,
     .F,.F,.E1,.E1,.D1,.D1,.C,
     .BREAK,
     .G,.G,.F, .E1,.E1,.D1,
     .BREAK,
     .G,.G,.F,
     .BREAK,
     .E1,.E1,.D1]
    
    
    static var b: [XiloKeys] =
    [.BREAK,
     .C,.C,.G,.G,.A,.A,.G,
     .BREAK,
     .F,.F,.E1,.E1,.D1,.D1,.C,
     .BREAK,
     .G,.G,.F, .E1,.E1,.D1,
     .BREAK,
     .G,.G,.F,
     .BREAK,
     .E1,.E1,.D1]
    
    static var c: [XiloKeys] =
    [.BREAK,
     .C,.C,.G,.G,.A,.A,.G,
     .BREAK,
     .F,.F,.E1,.E1,.D1,.D1,.C,
     .BREAK,
     .G,.G,.F, .E1,.E1,.D1,
     .BREAK,
     .G,.G,.F,
     .BREAK,
     .E1,.E1,.D1]
}
