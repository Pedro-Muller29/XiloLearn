//
//  SimonAI.swift
//  XiloLearn
//
//  Created by Pedro Mezacasa Muller on 26/09/23.
//

import Foundation
import Combine

/// Used for the SimonAI in the game
class SimonAI {
    
    // MARK: Sliders
    let timerInterval: TimeInterval = 0.7
    
    // -------------
    
    // The music that will be playing
    private var combinationToPlay: [XiloKeys]
    
    // Combine subscriptions
    let pressingKeysSubscription: AnyPublisher<XiloKeys, Never>
    
    init(combinationToPlay: [XiloKeys]) {
        self.combinationToPlay = combinationToPlay
        
        self.pressingKeysSubscription =
        Timer.publish(every: timerInterval, on: .current, in: .default)
            .autoconnect()
            .zip(combinationToPlay.publisher)
            .map({ _, xiloKey in
                return xiloKey
            })
            .eraseToAnyPublisher()
    }
}
