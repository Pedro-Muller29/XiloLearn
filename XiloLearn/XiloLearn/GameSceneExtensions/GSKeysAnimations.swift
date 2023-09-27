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
    
    enum XiloKeyAnimation {
        case makeKeyGoOutDown
        case makeKeySetForGame
        
        fileprivate func animate(_ key: XiloKeys, withDuration time: TimeInterval, startingWait: TimeInterval, scene: GameScene) {
            switch self {
            case .makeKeyGoOutDown:
                if let node = scene.xiloKeysToNode[key] {
                    node.run(SKAction.sequence([
                        .wait(forDuration: startingWait),
                        .moveTo(y: scene.frame.minY - scene.regraDe3ParaAltura(596/2), duration: time)
                    ]))
                }
                
            case .makeKeySetForGame:
                if let node = scene.xiloKeysToNode[key] {
                    node.run(SKAction.sequence([
                        .wait(forDuration: startingWait),
                        .moveTo(y: scene.frame.minY - scene.regraDe3ParaAltura(65), duration: time)
                    ]))
                }
            }
        }
    }
    
    func animateXiloKeys(withDuration time: TimeInterval, with animation: XiloKeyAnimation) {
        var currentWait: Double = 0
        let increaseAmount: Double = time/16
        for note in XiloKeys.allCases {
            if xiloKeysToNode[note] != nil {
                animation.animate(note, withDuration: time/2, startingWait: currentWait, scene: self)
                currentWait += increaseAmount
            }
        }
    }
}
