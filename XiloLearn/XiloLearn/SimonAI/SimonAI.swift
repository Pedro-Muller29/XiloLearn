//
//  SimonAI.swift
//  XiloLearn
//
//  Created by Pedro Mezacasa Muller on 26/09/23.
//

import Foundation
import Combine

/// Used for the SimonAI in the game. Is responsible for producing the sounds in the correct order, and validating user input order
class SimonAI {
    
    // MARK: Change UX
    let timerInterval: TimeInterval
    var increasePerCycle: Int
    // -------------
    
    // The music that will be playing
    internal var combinationToPlay: [XiloKeys]
    
    // Combine subscriptions
    var playMusicSubscription: AnyPublisher<XiloKeys, Never>
    private var musicsSubject: CurrentValueSubject<[XiloKeys], Never>
    
    // Current note representens the idx for current note
    var currentIndex: Int = 0
    
    // Current level indicates how many increasePerCycle have been done
    var currentLevel: Int = 1 {
        // Updates the current sequence being presented based on this new level
        didSet {
            self.play(combinationToPlay:[.STARTCURRENTSEQUENCE] + Array(combinationToPlay[0..<(currentLevel * increasePerCycle) + 1]) + [.FINISHCURRENTSEQUENCE])
            self.currentIndex = 0
        }
    }
    
    init(combinationToPlay: [XiloKeys], increasePerCycle: Int = 1, timerInterval: TimeInterval = 0.7) {
        self.combinationToPlay = combinationToPlay
        self.increasePerCycle = increasePerCycle
        self.timerInterval = timerInterval
        
        // publisher responsável por enviar arrays para o publisher "playMusicSubscription"
        self.musicsSubject = .init([.STARTCURRENTSEQUENCE] + Array(combinationToPlay[0..<(increasePerCycle) + 1]) + [.FINISHCURRENTSEQUENCE])
        
        // Esse publisher é responsável por enviar uma tecla a cada "timerInterval"
        self.playMusicSubscription = musicsSubject
            .debounce(for: 0.2, scheduler: RunLoop.main)
            .flatMap { music -> AnyPublisher<XiloKeys, Never> in
                Timer.publish(every: timerInterval, on: .current, in: .default)
                    .autoconnect()
                    .zip(music.publisher)
                    .map { $1 }
                    .eraseToAnyPublisher()
            }
            .eraseToAnyPublisher()
    }
    
    /// Usada para passar uma nova música para a AI
    private func play(combinationToPlay: [XiloKeys]) {
        musicsSubject.send(combinationToPlay)
    }
}
