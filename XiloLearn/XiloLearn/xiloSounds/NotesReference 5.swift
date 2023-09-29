//
//  NotesReference.swift
//  XiloLearn
//
//  Created by Alexandre Lemos da Silva on 26/09/23.
//

import Foundation


/**
     base:  https://www.inspiredacoustics.com/en/MIDI_note_numbers_and_center_frequencies
     note to midi reference
     // elas de fato estao na escala 6 + 7, entao agora está ok
     // Root Note + 4 results in Third, +7 is Fifth, + 11 is Seventh
     
      a   ->     let rootNoteA: UInt8 = 93
      b   ->     let rootNoteB: UInt8 = 95
      c   ->     let rootNoteC: UInt8 = 84
      c2 ->      let rootNoteC2: UInt8 = 96
      d1 ->      let rootNoteD1: UInt8 = 86
      e1 ->      let rootNoteE1: UInt8 = 88 // e6
      f    ->    let rootNoteF: UInt8 = 89
      g   ->     let rootNoteG: UInt8 = 91

      C, D, E, F, G, A, B, C2 (ordem correta)

 **/
