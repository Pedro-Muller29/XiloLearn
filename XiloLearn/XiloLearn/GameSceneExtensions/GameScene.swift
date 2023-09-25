//
//  GameScene.swift
//  XiloLearn
//
//  Created by Pedro Mezacasa Muller on 25/09/23.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    // Nodos
    var xiloBackground: SKSpriteNode? = SKSpriteNode()
    var xiloKeys: [SKNode] = []
    var startButton: SKSpriteNode? = SKSpriteNode()
    
    // Variáveis de controle de estado
    var gameIsOn: Bool = false
    
    override func didMove(to view: SKView) {
        setupBackground()
        setupKeys()
        setupStartButton()
    }
    
    func startGame() {

    }
}
