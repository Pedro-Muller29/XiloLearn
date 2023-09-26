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
            if startButton!.contains(touch.location(in: self)) {
                self.startButton?.texture = SKTexture(image: UIImage(systemName: gameIsOn ? "play.fill" : "pause.fill") ?? UIImage())
                continue
            }
            
            // Checa se alguma das notas foi tocada e toca o som da nota.
            for k in self.xiloKeys.values {
                if k.contains(touch.location(in: self)) {
                    self.playNode(xilophoneKeyNode: k)
                    continue
                }
            }
        }
    }
}
