//
//  GSSetupProgressBar.swift
//  XiloLearn
//
//  Created by Gustavo Zahorcsak Matias Silvano on 27/09/23.
//

import Foundation
import SpriteKit

extension GameScene {
    func setupProgressBar() {
        let progressBarContainer: SKShapeNode = SKShapeNode(rectOf: CGSize(
            width: regraDe3ParaLargura(375),
            height: regraDe3ParaAltura(20)), cornerRadius: 16)
        
        progressBarContainer.strokeColor = UIColor.black
        progressBarContainer.position = CGPoint(x: self.frame.midX, y: self.frame.maxY - regraDe3ParaAltura(64))
        progressBarContainer.zPosition = 65
        progressBarContainer.name = "progressBarContainer"
        self.addChild(progressBarContainer)
        
        let progressBar = SKSpriteNode(color: UIColor.systemGreen, size: CGSize(
            width: regraDe3ParaLargura(19.5),
            height: regraDe3ParaAltura(19.5)))
        
        progressBar.position = CGPoint(x: progressBarContainer.frame.minX, y: progressBarContainer.frame.midY)
        progressBar.zPosition = 60
        progressBar.name = "progressBar"
        progressBar.anchorPoint = CGPoint(x: -0, y: 0.5)
        
        self.addChild(progressBar)
        self.progressBar = progressBar
    }
    
    func increaseProgress(by: CGFloat) {
        
    }
}


