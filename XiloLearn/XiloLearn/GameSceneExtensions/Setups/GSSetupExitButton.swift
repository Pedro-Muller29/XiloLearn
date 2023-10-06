//
//  GSSetupExitButton.swift
//  XiloLearn
//
//  Created by Gustavo Zahorcsak Matias Silvano on 06/10/23.
//

import Foundation
import SpriteKit

extension GameScene {
    func setupExitButton() {
        let exitButton = SKSpriteNode(texture: SKTexture(image: UIImage(systemName: "x.circle.fill") ?? UIImage()))
        exitButton.size = CGSize(
            width: regraDe3ParaLargura(25),
            height: regraDe3ParaAltura(25))
        exitButton.position = CGPoint(
            x: self.frame.maxX - regraDe3ParaLargura(64),
            y: self.frame.maxY - regraDe3ParaAltura(64))
        exitButton.zPosition = 50
        exitButton.name = "exitButton"
        self.exitButton = exitButton
        self.addChild(exitButton)
    }
}
