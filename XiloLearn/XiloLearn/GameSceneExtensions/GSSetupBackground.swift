//
//  GSSetupBackground.swift
//  XiloLearn
//
//  Created by Pedro Mezacasa Muller on 25/09/23.
//

import Foundation
import SpriteKit

extension GameScene {
    func setupBackground() {
        xiloBackground = SKSpriteNode(imageNamed: "XilofoneFake")
        xiloBackground?.size = CGSize(width: self.size.width, height: self.size.height)
        xiloBackground?.position = .zero
        xiloBackground?.zPosition = -30
        addChild(xiloBackground!)
    }
}
