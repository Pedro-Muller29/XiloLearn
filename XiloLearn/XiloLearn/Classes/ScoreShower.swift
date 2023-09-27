//
//  ScoreShower.swift
//  XiloLearn
//
//  Created by Pedro Mezacasa Muller on 27/09/23.
//

import Foundation
import SpriteKit

class ScoreShower {
    private var currentScore: Int
    
    private var numberLabel: SKLabelNode
    private var textLabel: SKLabelNode
    
    unowned let scene: GameScene
    
    init(scene: GameScene, currentScore: Int = 0) {
        self.scene = scene
        self.currentScore = currentScore
        self.textLabel = SKLabelNode(attributedText:
                                        NSAttributedString(
                                            string: "score",
                                            attributes: [
                                                .font: UIFont.systemFont(ofSize: scene.regraDe3ParaAltura(20))]))
        self.textLabel.position = CGPoint(x: scene.regraDe3ParaLargura(-353), y: scene.frame.maxY - scene.regraDe3ParaAltura(80))
        self.numberLabel = SKLabelNode(attributedText:
                                        NSAttributedString(
                                            string: "\(currentScore)",
                                            attributes: [
                                                .font: UIFont.boldSystemFont(ofSize: scene.regraDe3ParaAltura(40))]))
        self.numberLabel.position = CGPoint(x: scene.regraDe3ParaLargura(-353), y: scene.frame.maxY - scene.regraDe3ParaAltura(53))
        scene.addChild(textLabel)
        scene.addChild(numberLabel)
    }
    
    func updateScore(by value: Int) {
        self.currentScore += value
        self.numberLabel.attributedText = NSAttributedString(
                                            string: "\(currentScore)",
                                            attributes: [
                                                .font: UIFont.boldSystemFont(ofSize: scene.regraDe3ParaAltura(40))])
    }
}
