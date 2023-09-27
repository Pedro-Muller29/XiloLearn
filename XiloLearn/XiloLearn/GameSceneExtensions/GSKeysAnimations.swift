//
//  GSKeysAnimations.swift
//  XiloLearn
//
//  Created by Pedro Mezacasa Muller on 26/09/23.
//

import Foundation
import SpriteKit

// MARK: Animations for XiloKeys
extension GameScene {
    
    func animateXiloKeys(withDuration time: TimeInterval) {
        var currentWait: Double = 0
        let increaseAmount: Double = time/16
        for note in XiloKeys.allCases {
            if xiloKeysToNode[note] != nil {
                makeOneKeyGoDown(note, withDuration: time/2, startingWait: currentWait)
                currentWait += increaseAmount
            }
        }
    }
    
    private func makeOneKeyGoDown(_ key: XiloKeys, withDuration time: TimeInterval, startingWait: TimeInterval) {
        if let node = xiloKeysToNode[key] {
            node.run(SKAction.sequence([
                .wait(forDuration: startingWait),
                .moveBy(x: 0, y: regraDe3ParaAltura(-623), duration: time)
            ]))
        }
    }
    
}
