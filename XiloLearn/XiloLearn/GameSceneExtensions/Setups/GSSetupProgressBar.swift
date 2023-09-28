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
        
        // SKShapeNode que vai cobrir a progressBar
        let progressBarContainer: SKShapeNode = SKShapeNode(rectOf: CGSize(
            width: regraDe3ParaLargura(375),
            height: regraDe3ParaAltura(20)), cornerRadius: 16)
        progressBarContainer.strokeColor = UIColor.white
        progressBarContainer.fillColor = UIColor.clear
        progressBarContainer.lineWidth = 16
        progressBarContainer.position = CGPoint(x: self.frame.midX, y: self.frame.maxY - regraDe3ParaAltura(64))
        progressBarContainer.zPosition = 15
        progressBarContainer.name = "progressBarContainer"
        self.addChild(progressBarContainer)
        self.progressBarContainer = progressBarContainer
        
        
        
        // SKShapeNode que vai ficar na mesma posição da progressBarContainer, serve só pra fazer outro stroke
        let secondStroke = SKShapeNode(rectOf: CGSize(
            width: regraDe3ParaLargura(375) - 16,
            height: regraDe3ParaAltura(32) - 16),
            cornerRadius: 16 - 8)
        secondStroke.strokeColor = UIColor.gray
        secondStroke.fillColor = UIColor.clear
        secondStroke.lineWidth = 2
        secondStroke.position = CGPoint(x: 0, y: 0)
        progressBarContainer.addChild(secondStroke)
        
        
        
        // SKSPriteNodes das estrelas que vão ficar ao longo da progressBarContainer
        
        // Primeira estrela
        let star1 = SKSpriteNode(texture: SKTexture(imageNamed: "Star3"))
        star1.size = CGSize(width: 40, height: 40)
        star1.position = CGPoint(x: 0, y: 0)
        star1.zRotation = CGFloat(165 * (CGFloat.pi / 180))
        star1.color = UIColor.systemYellow
        star1.name = "star1"
        progressBarContainer.addChild(star1)
        
        // Segunda estrela
        let star2 = SKSpriteNode(texture: SKTexture(imageNamed: "Star3"))
        star2.size = CGSize(width: 40, height: 40)
        star2.position = CGPoint(x: regraDe3ParaLargura(180) / 2, y: 0)
        star2.zRotation = CGFloat(165 * (CGFloat.pi / 180))
        star2.color = UIColor.systemYellow
        star2.name = "star2"
        progressBarContainer.addChild(star2)
        
        // Terceira estrela
        let star3 = SKSpriteNode(texture: SKTexture(imageNamed: "Star3"))
        star3.size = CGSize(width: 50, height: 50)
        star3.position = CGPoint(x: regraDe3ParaLargura(180), y: 0)
        star3.zRotation = CGFloat(165 * (CGFloat.pi / 180))
        star3.color = UIColor.systemYellow
        star3.name = "star3"
        progressBarContainer.addChild(star3)
        
        
        
        // SKSpriteNode da progressbar (barrinha que vai mexer na tela)
        let progressBar = SKSpriteNode(color: UIColor.systemGreen, size: CGSize(
            width: regraDe3ParaLargura(0),
            height: regraDe3ParaAltura(20)))
        progressBar.position = CGPoint(x: progressBarContainer.frame.minX + regraDe3ParaLargura(6), y: progressBarContainer.frame.midY)
        progressBar.zPosition = 10
        progressBar.name = "progressBar"
        progressBar.anchorPoint = CGPoint(x: 0, y: 0.5)
        self.addChild(progressBar)
        self.progressBar = progressBar
    }
    
    func updateProgress(totalSequencesInSong: Int) {
        
        // scoreUnit é a porção de largura que vai ser somada a progressBar, dado o total de sequências de notas tocadas
        let scoreUnit: CGFloat = regraDe3ParaLargura(375) / CGFloat(totalSequencesInSong)
        
        if (((self.progressBar?.size.width ?? 0.0) + scoreUnit) <= (regraDe3ParaLargura(375))) {
            
            // increase progressBar
            self.progressBar?.run(SKAction.resize(byWidth: scoreUnit, height: 0, duration: 0.1))
         
            if self.progressBar?.size.width ?? 0.0 >= (regraDe3ParaLargura(375) / 2) - 20 - regraDe3ParaLargura(0) {
                self.star1 = true
                if let star = self.progressBarContainer?.childNode(withName: "star1") as? SKSpriteNode {
                    star.texture = SKTexture(imageNamed: "StarFill3")
                }
            }
            
            if self.progressBar?.size.width ?? 0.0 >= ((regraDe3ParaLargura(375) / 2) + (regraDe3ParaLargura(375) / 4)) - 20 - regraDe3ParaLargura(0) {
                self.star2 = true
            }
        }
        // debug
//        print("Width of progressBar: \(self.progressBar?.size.width ?? 0.0)")
//        print("Width of container: \(regraDe3ParaLargura(375))")
//        print("ScoreUnit: \(scoreUnit)")
        print("\(star1)")
        print("\(star2)")
    }
}
