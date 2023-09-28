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
        if let star = self.progressBarContainer?.childNode(withName: "star1") as? SKSpriteNode {
            star.texture = SKTexture(imageNamed: "StarFill3")
        }
        for touch in touches {
            // Checa se alguma das notas foi tocada e toca o som da nota.
            if !listeningToSimon {
                if evaluateTouchesInXiloKeys(touch: touch) {
                    if let simonAI = simonAI {
                        updateProgress(totalSequencesInSong: min(CGFloat(simonAI.increasePerCycle * simonAI.currentLevel + 1)/CGFloat(simonAI.combinationToPlay.count), 1))
                    }
                    continue
                }
            }
            
            checkStartButtonTouched(touch: touch)
        }
    }
    
    private func evaluateTouchesInXiloKeys(touch: UITouch) -> Bool {
        for k in self.xiloKeysToNode.values {
            if k.contains(touch.location(in: self)) {
                // TODO: Check if is arcade or official mode
                self.playNode(k)
                self.hapticManager.playHaptic(intensity: 10, sharpness: 10)
                if let simonAI = self.simonAI {
                    let gotItRight: Bool = simonAI.validateInput(xiloKey: nodeToXiloKeys[k] ?? .BREAK, isGameOn: &isPlaying)
                    if gotItRight {
                        score?.updateScore(by: 1)
                    } else {
                        score?.updateScore(by: -10)
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
    
    private func checkStartButtonTouched(touch: UITouch) {
        if let startButton = startButton {
            if startButton.background.contains(touch.location(in: self)) {
                self.hapticManager.playHaptic(intensity: 1, sharpness: 1)
                // MARK: Funcao p fzr o botao start sumir no tempo certo com a descida e deixando os botoes prontos, alem de iniciar o simon
                self.animateXiloKeys(withDuration: 1, with: .makeKeyGoOutDown, completion: {
                    self.gotOutOfMenu = true
                })
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                    startButton.vanish()
                    #warning("Aqui da pra avisar o SwiftUI que o cara comecou")
                })
                
            }
        }
    }
}
