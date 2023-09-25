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
    
    var startButton: SKSpriteNode? = SKSpriteNode()
    var gameIsOn: Bool = false
    
    var xiloKeys: [SKNode] = []
    
    override func didMove(to view: SKView) {
        // code here
        setupBackground()
        setupKeys()
        setupStartButton()
    }
    
    func startGame() {

    }
}
