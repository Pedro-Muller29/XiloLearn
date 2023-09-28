//
//  GSTouchesBegan.swift
//  XiloLearn
//
//  Created by Gustavo Zahorcsak Matias Silvano on 25/09/23.
//

import Foundation
import SpriteKit

extension GameScene {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            // Checa se alguma das notas foi tocada e toca o som da nota.
            if !listeningToSimon {
                if evaluateTouchesInXiloKeys(touch: touch) {
                    continue
                }
            }
            
            if let startButton = startButton {
                if startButton.background.contains(touch.location(in: self)) {
                    self.animateXiloKeys(withDuration: 1, with: .makeKeyGoOutDown, completion: {
                        self.animateXiloKeys(withDuration: 1, with: .makeKeySetForGame) {
                            self.setupSimonAI(with: MockedSongs.ABCSong)
                            print("setou")
                        }
                    })
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                        startButton.vanish()
                        #warning("Aqui da pra avisar o SwiftUI que o cara comecou")
                    })
                    
                }
            }
        }
    }
    
    private func evaluateTouchesInXiloKeys(touch: UITouch) -> Bool {
        for k in self.xiloKeysToNode.values {
            if k.contains(touch.location(in: self)) {
                // TODO: Check if is arcade or official mode
                self.playNode(k)
                self.hapticManager.playHaptic(intensity: 10, sharpness: 10)
                if let simonAI = self.simonAI {
                    let gotItRight: Bool = simonAI.validateInput(xiloKey: nodeToXiloKeys[k] ?? .BREAK)
                    if gotItRight {
                        score?.updateScore(by: 1)
                    } else {
                        score?.updateScore(by: -1)
                        Vibration.error.vibrate()
                        listeningToSimon = true
                        simonAI.currentLevel = simonAI.currentLevel + 1 - 1
                    }
                }
                return true
            }
        }
        return false
    }
}
