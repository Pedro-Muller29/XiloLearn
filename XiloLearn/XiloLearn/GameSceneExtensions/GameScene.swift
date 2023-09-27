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
    var repeatButton: SKSpriteNode? = SKSpriteNode()
    var startButton: SKSpriteNode? = SKSpriteNode()
    
    // Score
    var score: ScoreShower?
    
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
        setupProgressBar()
        score = ScoreShower(scene: self)
        animateXiloKeys(withDuration: 1, with: .makeKeyGoOutDown)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
            self.animateXiloKeys(withDuration: 1, with: .makeKeySetForGame)
            self.setupSimonAI(with: MockedSongs.ABCSong)
        })
    }
    
    func startGame() {

    }
}
