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
    var xiloKeysToNode: [XiloKeys: SKNode] = [:]
    var nodeToXiloKeys: [SKNode: XiloKeys] = [:]
    var repeatButton: SKSpriteNode? = SKSpriteNode()
    
    // Variáveis de controle de estado
    var gameIsOn: Bool = false
    
    // Combine + SimonAI
    var simonAI: SimonAI?
    var simonSubscription: AnyCancellable?
    
    // Haptics manager
    let hapticManager = HapticManager()
    
    // Progress bar controller value
    var progressBar: SKSpriteNode?
    var progress: Int = 0
    var maxProgress: Int = 375
    
    override func didMove(to view: SKView) {
        setupBackground()
        setupKeys()
        setupRepeatButton()
        setupSimonAI(with: MockedSongs.ABCSong)
        setupProgressBar()
    }
    
    func startGame() {

    }
}
