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
    
    
    /**
     ^F  ^F   ^F  ^F  ^F
     Is this the real life?

     ^E   ^E  ^F  ^E-^D-^C
     Is this just fantasy?

     ^F       ^F  ^F   ^G-^F
     Caught in a landslide

     F       F-^D   ^D   ^D#-^D-^C-Bb
     No escape from reality...

      

     D-D      D#     D
     Open your eyes

     D        D   D    D#     F    .Bb   G
     Look up to the skies and see...

      

     G      G   G    G      G
     I'm just a poor boy

     F     F     G     F-D#-C
     I need no sympathy

     G - A       Bb    B-B    Bb      A-A   Bb
     Because I'm easy come, easy go

     B-B     Bb      A-A   Bb
     Little high, little low...

     G-G-G      G       F       Bb
     Anyway the wind blows,

     E - E           E-E       F-.F   . A   D#
     Doesn't really matter to me,

     .A-.Bb  .Bb
     To  me...

      

     D - D      .Bb     C    D    D
     Mama, just killed a man

     D    D   D#    F-D#    D     C
     Put a gun against his head

     C            D     D#-F      D#    D       C
     Pulled my trigger, now he's dead

      

     D-D        D     F       A     G-G
     Mama, life had just begun

     G       Bb    Bb    Bb
     But now I've gone

     Bb        Bb     G   D#  D-C
     And thrown it all away

      

     G-G       F-G-G#-G
     Mama, ooo   ~    ~

     G-G        G#     G      G       F      F
     Didn't mean to make you cry

     .Bb .Bb F     F     G-G
     If I'm not back again

     G#      G#    Bb-G#-G
     This time tomorrow

     F-G     Bb    F-G   D#
     Carry on, carry on,

     .Bb  .Bb  .B-C#   .B-C#    .B-Bb
     As  if  nothing  really  matters...

      

     D        D     .Bb    C     D       D
     Too late, my time has come

     D             D#-F       D#    D       C
     Sends shivers down my spine

     C-D        D#-F    D#   D   C
     Body's aching all the time

     D - D          C-.Bb-C-D     F    A   G   G
     Goodbye everybody I've got to go

     F - G     Bb    Bb   Bb  Bb-Bb
     Gotta leave you all behind

     G        D#    D      C
     And face the truth

      

     G-G F-G-G#-G
     Mama, oooh....

     G#   G     G - F    F
     I don't wanna die

     .Bb     .Bb - F     F
     I sometimes wish

     G    G-G     G#    G#   Bb   G#-G
     I'd never been born at all...

      

     D C# C# C-C
     I see a little

     C#-C#-D-D  C# C# C
     Silhouette  of  a  man

     E - E - A                E - E - A
     Scaramouch, scaramouch

     E         E    D#   D#   E-F#-E
     Will you do the fandango

     F - F - F      F       F        F - F
     Thunderbolt and lightning

     F#-F# F#-F#    F#-F#    G
     Very very frightening me!

      

     ^F#-^F#-^G-^F#
     Gallileo!

     A-A-Bb-A
     Gallileo

     ^F#-^F#-^G-^F#
     Gallileo!

     A-A-Bb-A
     Gallileo

     A-A-Bb-A G-F-E
     Gallileo Figaro...

     Bb-Bb-Bb-Bb ~ G-D#-C-.Bb
     Magnifico!

      

     .B  .Bb  .Bb  .A  .Bb
     I'm just a poor boy

     .B-.Bb-.Bb  .A  .Bb
     Nobody loves me

     ^C     Bb  Bb   A   Bb
     He's just a poor boy

     ^C ^C    Bb    A-A-Bb
     From a poor family

     ^C     ^C   ^D   Bb
     Spare him his life

     G          G        F-F-F-Bb
     From this monstrosity!

      

     B-B     Bb    A-A   Bb
     Easy come easy go

     B       B    Bb  Bb  A-Bb
     Will you let me go...?

      

     .Bb-D#-.Bb
     Bismillah!

     ^D# Bb Bb Bb Bb Bb Bb
     No we will not let you go

     ^D# ^D# ^D#
     Let him go!

     .Bb-D#-.Bb
     Bismillah!

     .Bb .Bb .Bb .Bb .Bb .Bb
     We will not let you go

     ^D# ^D# ^D#
     Let him go!

     .Bb-D#-.Bb
     Bismillah!

     .Bb .Bb .Bb .Bb .Bb .Bb
     We will not let you go

     ^D# ^D# ^D#
     Let me go!

     .Bb .Bb .Bb .Bb .Bb
     Will not let you go

     ^D# ^D# ^D#
     Let me go

     .Bb-.Bb .Bb .Bb .Bb
     Never let you go

     ^D# ^D# ^C#-A-F-D#
     Let me go-oo-oo-oo

     D   C#   F#  G#  B  ^D  ^D#
     No, no, no, no, no, no, no!

      

     Bb  Bb-Bb  C-Bb   Bb-Bb  ^C-Bb
     Oh  mama   mia,   mama    mia

     Bb-Bb ^C-Bb  G#  G  F
     Mama  mia  let  me  go

     Bb-^D#-^D#-^D
     Beelzebub

     ^D# ^D# ^D-^D
     Has a devil

     ^D ^D-^G ^G Bb
     Put aside for me

     G   ^C
     For me

     G  ^Bb
     For me!

      

     G#  G#   G#     G     G       G       F
     So you think you can stone me

     F       F     D#  D#  D-D#-F
     And spit in my eye   ~   ~

     G#   G#    G#    G      G     G     F
     So you think you can love me

     F             F     D#   D#  G#-Bb-^C
     And leave me to die   ~     ~

     A     G#-F#-G#
     Oh baby   ~

     A         A       A   G#  G#  F#-F#-G#
     Can't do this to me baby ~

     E        E-E      E    F#
     Just gotta get out

     E        E-E      E      F#    E-D#   E-.B
     Just gotta get right outta here

      

     ^G#-^G  ^D#-G  Bb-Bb
     Nothing really matters

     ^G-^F-^D#  ^D  Bb
     Anyone can see

     ^G-^D#  ^F-^G  ^D#-B
     Nothing really matters

     ^G-^F  ^F-^D#  ^D#-^C
     Nothing really matters

     ^D-^D#
     To me...
     
     
     */
    
    
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
