//
//  MockedSongs.swift
//  XiloLearn
//
//  Created by Pedro Mezacasa Muller on 26/09/23.
//

import Foundation

/// Contains mocked songs for the Genius AI.
/// The songs are in the format: [Key], and every "Break" means wait for the time of a key.
/// I think in the the game the "Break" wont be evaluated, its just for the simons song sound better
class MockedSongs {
    /// ABC american song for kids: ABCDEFG, HIJKLMNOP, QRS, TUV, WX, Y AND Z
    static var ABCSong: [XiloKeys] =
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
