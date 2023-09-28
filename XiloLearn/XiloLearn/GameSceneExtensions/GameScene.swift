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
    
    // Score
    var score: ScoreShower?
    var startButton: StartButtonShower?
    
    // Variáveis de controle de estado
    @MainActor var listeningToSimon: Bool = false
    
    // Combine + SimonAI
    var simonAI: SimonAI?
    var simonSubscription: AnyCancellable?
    
    // Haptics manager
    let hapticManager = HapticManager()
    
    override func didMove(to view: SKView) {
        setupBackground()
        setupKeys()
        setupStart()
        
//        animateXiloKeys(withDuration: 1, with: .makeKeyGoOutDown)
//        animateXiloKeys(withDuration: 1, with: .makeKeySetForGame)
        setupScore()
        // MARK: abaixo só p se divertir
//        DispatchQueue.global().async {
//            Task {
//                while true {
//                    try! await Task.sleep(nanoseconds: 1000000000)
//                    self.animateXiloKeys(withDuration: 1, with: .makeKeySetForGame)
//                    try! await Task.sleep(nanoseconds: 1000000000)
//                    self.animateXiloKeys(withDuration: 1, with: .makeKeyGoOutDown)
//                }
//            }
//        }
//        self.setupSimonAI(with: MockedSongs.ABCSong)
    }
    
    func startGame() {

    }
}
