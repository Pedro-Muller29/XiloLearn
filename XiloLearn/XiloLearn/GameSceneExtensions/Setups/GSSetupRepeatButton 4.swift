//
//  GSSetupRepeatButton.swift
//  XiloLearn
//
//  Created by Pedro Mezacasa Muller on 25/09/23.
//

import Foundation
import SpriteKit

extension GameScene {
    func setupRepeatButton() {
        let repeatButton = SKSpriteNode(texture: SKTexture(image: UIImage(systemName: "arrow.clockwise") ?? UIImage()))
        repeatButton.size = CGSize(width: regraDe3ParaLargura(25), height: regraDe3ParaAltura(25))
        repeatButton.position = CGPoint(
            x: self.frame.maxX - regraDe3ParaLargura(64),
            y: self.frame.maxY - regraDe3ParaAltura(64))
        repeatButton.name = "repeatButton"
        addChild(repeatButton)
        self.repeatButton = repeatButton
    }
}
