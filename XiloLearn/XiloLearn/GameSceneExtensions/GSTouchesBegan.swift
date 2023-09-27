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
                    print(gotItRight ? "Acertou a nota: \(nodeToXiloKeys[k]!)" : "Errou a nota")
#warning("Quando tivermos uma animação validando se o cara acertou ou não, é aqui que fica")
                }
                return true
            }
        }
        return false
    }
}
