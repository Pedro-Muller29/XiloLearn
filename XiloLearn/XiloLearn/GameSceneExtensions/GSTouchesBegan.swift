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
            if startButton!.contains(touch.location(in: self)) {
                self.startButton?.texture = SKTexture(image: UIImage(systemName: gameIsOn ? "play.fill" : "pause.fill") ?? UIImage())
                gameIsOn.toggle()
                continue
            }
            
            for k in self.xiloKeys {
                if k.contains(touch.location(in: self)) {
                     // TODO: Colocar a funcao do alexandre aqui
                }
            }
        }
        
        
    }
}
