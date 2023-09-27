//
//  GSSetupStartButton.swift
//  XiloLearn
//
//  Created by Pedro Mezacasa Muller on 25/09/23.
//

import Foundation
import SpriteKit

extension GameScene {
    func setupStartButton() {
        startButton = SKSpriteNode(texture: SKTexture(image: UIImage(systemName: "play.fill") ?? UIImage()))
        startButton?.size = CGSize(width: 60, height: 60)
        startButton?.position = CGPoint(x: self.size.width/2 * 0.8, y: self.size.height/2 * 0.8)
        startButton?.name = "startButton"
        addChild(startButton!)
    }
}
