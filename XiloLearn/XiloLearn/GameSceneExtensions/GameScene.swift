//
//  GameScene.swift
//  XiloLearn
//
//  Created by Pedro Mezacasa Muller on 25/09/23.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var xiloBackground: SKSpriteNode? = SKSpriteNode()
    
    override func didMove(to view: SKView) {
        // code here
        setupBackground()
        setupKeys()
    }
}
