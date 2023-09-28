//
//  GSSetupSimonAI.swift
//  XiloLearn
//
//  Created by Pedro Mezacasa Muller on 26/09/23.
//

import Foundation
import SpriteKit
import Combine

extension GameScene {
    /// Function used for setting up SimonAI and the publishers for reacting to the AI actions
    func setupSimonAI(with song: [XiloKeys]) {
        self.simonAI = SimonAI(combinationToPlay: song, increasePerCycle: 3)
        guard let simonAI = self.simonAI else { print("Error: problems with simon setup") ; return }
        self.simonSubscription =
        simonAI
            .playMusicSubscription
            .sink(receiveValue: { [weak self] xiloKey in
                guard let self = self else {
                    print("self ja foi desinicializada")
                    return
                }
                if xiloKey == .FINISHCURRENTSEQUENCE {
                    self.listeningToSimon = false
                } else if xiloKey == .STARTCURRENTSEQUENCE {
                    self.listeningToSimon = true
                } else {
                    self.playNode(self.xiloKeysToNode[xiloKey] ?? SKShapeNode())
                }
            })
        self.listeningToSimon = true
    }
}
