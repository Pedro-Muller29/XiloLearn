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
            
            //  Verifica se o botão que pausa e despausa o jogo foi tocado
//            if startButton!.contains(touch.location(in: self)) {
//                self.startButton?.texture = SKTexture(image: UIImage(systemName: gameIsOn ? "play.fill" : "pause.fill") ?? UIImage())
//                continue
//            }
            if repeatButton!.contains(touch.location(in: self)) {
                /// Aqui vai a função de repetir a música
                
                self.progress += 10
                self.progressBar?.run(SKAction.resize(byWidth: 10, height: 0, duration: 0.5))
                self.progressBar?.run(SKAction.resize(toWidth: regraDe3ParaLargura(375), duration: 1))
                
                print("repeat action")
                continue
            }
            // Checa se alguma das notas foi tocada e toca o som da nota.
            if evaluateTouchesInXiloKeys(touch: touch) {
                continue
            }
        }
    }
    
    private func evaluateTouchesInXiloKeys(touch: UITouch) -> Bool {
        for k in self.xiloKeysToNode.values {
            if k.contains(touch.location(in: self)) {
                // TODO: Check if is arcade or official mode
                self.playNode(xilophoneKeyNode: k)
                self.hapticManager.playHaptic(intensity: 10, sharpness: 10)
                if let simonAI = self.simonAI {
                    let gotItRight: Bool = simonAI.validateInput(xiloKey: nodeToXiloKeys[k] ?? .A)
                    if gotItRight {
                        score?.updateScore(by: 1)
                    } else {
                        score?.updateScore(by: -1)
                    }
                }
                return true
            }
        }
        return false
    }
}
