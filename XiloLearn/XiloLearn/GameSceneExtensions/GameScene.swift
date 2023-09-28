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

class GameScene: SKScene, ObservableObject {
    
    // Nodos
    var xiloBackground: SKSpriteNode? = SKSpriteNode()
    var xiloKeysToNode: [XiloKeys: SKShapeNode] = [:]
    var nodeToXiloKeys: [SKShapeNode: XiloKeys] = [:]
    var repeatButton: SKSpriteNode? = SKSpriteNode()
    var progressBarContainer: SKShapeNode? = SKShapeNode()
    var progressBar: SKSpriteNode? = SKSpriteNode()
    var icon: SKSpriteNode?
    
    // Score
    var score: ScoreShower?
    var startButton: StartButtonShower?
    
    // Variáveis de controle de estado
    @MainActor var listeningToSimon: Bool = false
    var isMenu: Bool
    @Published var gotOutOfMenu: Bool = true
    @Published var isPlaying: Bool = false
    
    // Combine + SimonAI
    var simonAI: SimonAI?
    var simonSubscription: AnyCancellable?
    
    // Haptics manager
    let hapticManager = HapticManager()
    
    var progress: Int = 0
    var star1: Bool = false
    var star2: Bool = false
    var star3: Bool = false
    // song
    var song: [XiloKeys]
    
    init(startingMenu: Bool, song: [XiloKeys], size: CGSize) {
        self.song = song
        self.isMenu = startingMenu
        super.init(size: size)
        if isMenu {
            gotOutOfMenu = false
        } else {
            isPlaying = true
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMove(to view: SKView) {
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.scaleMode = .aspectFit
        if isMenu {
            setupBackground()
            setupKeys()
            setupStart()
            setupGameIcon()
        } else {
            setupBackground()
            setupKeys()
            setupScore()
            setupProgressBar()
            animateXiloKeys(withDuration: 0.01, with: .makeKeyGoOutDown, completion: {
                self.animateXiloKeys(withDuration: 1, with: .makeKeySetForGame) {
                    self.setupSimonAI(with: self.song)
                }
            })
        }
    }
    
    func setupSong(with song: [XiloKeys]) {
        self.removeAllChildren()
        print("tamanho: ", self.children.count)
        isPlaying = true
        isMenu = false
//        setupBackground()
//        setupKeys()
//        setupScore()
//        animateXiloKeys(withDuration: 0, with: .makeKeyGoOutDown, completion: {
//            self.animateXiloKeys(withDuration: 1, with: .makeKeySetForGame) {
//                self.setupSimonAI(with: self.song)
//            }
//        })
    }
}
