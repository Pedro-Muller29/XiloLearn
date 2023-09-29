//
//  StartButtonShower.swift
//  XiloLearn
//
//  Created by Pedro Mezacasa Muller on 28/09/23.
//

import Foundation
import SpriteKit

class StartButtonShower {
    let background: SKSpriteNode
    private let whiteInBetween: SKShapeNode
    private let startLabel: SKLabelNode
    
    init(size: CGSize, cornerRadius: CGFloat, position: CGPoint, scene: SKScene) {
        self.background = SKSpriteNode(imageNamed: "CirculoArcoIris")
        background.size = size
        background.position = position
        background.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        scene.addChild(background)
        
        self.whiteInBetween = SKShapeNode(
            rectOf:
                CGSize(
                    width: size.width * (240/255),
                    height: size.height * (82/96)),
            cornerRadius: cornerRadius * 20/24)
        whiteInBetween.fillColor = .white
        whiteInBetween.lineWidth = 0
        whiteInBetween.zPosition = 2
        background.addChild(whiteInBetween)
        
        self.startLabel = SKLabelNode(attributedText: NSAttributedString(string: "Start", attributes: [.font: UIFont.boldSystemFont(ofSize: cornerRadius * 50/24), .foregroundColor: UIColor.black]))
        startLabel.zPosition = 4
        startLabel.position = CGPoint(x: 0, y: -size.height/8)
        background.addChild(startLabel)
    }
    
    func vanish() {
        self.background.scale(to: CGSize(width: 0, height: 0))
    }
}
