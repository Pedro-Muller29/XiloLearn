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
    
    override func didMove(to view: SKView) {
        // code here
        xiloBackground = SKSpriteNode(imageNamed: "XilofoneFake")
        xiloBackground?.size = CGSize(width: self.size.width, height: self.size.height)
        xiloBackground?.position = .zero
        xiloBackground?.zPosition = -50
        addChild(xiloBackground!)
        
        startButton = SKSpriteNode(texture: SKTexture(image: UIImage(systemName: "play.fill")!))
        startButton?.size = CGSize(width: 60, height: 60)
        startButton?.position = CGPoint(x: self.size.width/2 * 0.8, y: self.size.height/2 * 0.8)
        startButton?.name = "startButton"
        addChild(startButton!)
    }
    
    func startGame() {
        
        
        
    }
}
