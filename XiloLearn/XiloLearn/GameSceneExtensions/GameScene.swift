//
//  GameScene.swift
//  XiloLearn
//
//  Created by Pedro Mezacasa Muller on 25/09/23.
//

import SpriteKit
import GameplayKit
import Combine

class GameScene: SKScene {
    
    // Nodos
    var xiloBackground: SKSpriteNode? = SKSpriteNode()
    var xiloKeysToNode: [XiloKeys: SKNode] = [:]
    var nodeToXiloKeys: [SKNode: XiloKeys] = [:]
    var startButton: SKSpriteNode? = SKSpriteNode()
    
    // Variáveis de controle de estado
    var gameIsOn: Bool = false
    
    // Combine + SimonAI
    var simonAI: SimonAI?
    var simonSubscription: AnyCancellable?
    
    override func didMove(to view: SKView) {
        setupBackground()
        setupKeys()
        setupStartButton()
        setupSimonAI(with: LibraryOfSongs.anunciacao)
    }
    
    func startGame() {

    }
}
