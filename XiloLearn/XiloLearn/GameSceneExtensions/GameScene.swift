//
//  GameScene.swift
//  XiloLearn
//
//  Created by Pedro Mezacasa Muller on 25/09/23.
//

import SpriteKit
import GameplayKit
import Combine
import CoreHaptics

class GameScene: SKScene {
    
    // Nodos
    var xiloBackground: SKSpriteNode? = SKSpriteNode()
    var xiloKeysToNode: [XiloKeys: SKShapeNode] = [:]
    var nodeToXiloKeys: [SKShapeNode: XiloKeys] = [:]
    var startButton: SKSpriteNode? = SKSpriteNode()
    
    // Variáveis de controle de estado
    var gameIsOn: Bool = false
    
    // Combine + SimonAI
    var simonAI: SimonAI?
    var simonSubscription: AnyCancellable?
    
    // Haptics manager
    let hapticManager = HapticManager()
    
    override func didMove(to view: SKView) {
        setupBackground()
        setupKeys()
        setupStartButton()
//        setupSimonAI(with: MockedSongs.ABCSong)
        animateXiloKeys(withDuration: 1, with: .makeKeySetForGame)
    }
    
    func startGame() {

    }
}
