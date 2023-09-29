//
//  GSSetupGameIcon.swift
//  XiloLearn
//
//  Created by Pedro Mezacasa Muller on 28/09/23.
//

import Foundation
import SpriteKit

extension GameScene {
    func setupGameIcon() {
        self.icon = SKSpriteNode()
        icon?.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        guard let icon = self.icon else { return }
        self.addChild(icon)
        
        let eIcon = SKSpriteNode(imageNamed: "IconE")
        eIcon.position = CGPoint(x: regraDe3ParaLargura(-94), y: 0)
        eIcon.size = CGSize(width: regraDe3ParaLargura(31.77), height: regraDe3ParaAltura(41.76))
        icon.addChild(eIcon)
        
        let cIcon = SKSpriteNode(imageNamed: "IconC")
        cIcon.position = CGPoint(x: regraDe3ParaLargura(-50), y: 0)
        cIcon.size = CGSize(width: regraDe3ParaLargura(44.71), height: regraDe3ParaAltura(53.19))
        icon.addChild(cIcon)
        
        let hIcon = SKSpriteNode(imageNamed: "IconH")
        hIcon.position = CGPoint(x: regraDe3ParaLargura(10), y: 0)
        hIcon.size = CGSize(width: regraDe3ParaLargura(54.95), height: regraDe3ParaAltura(64.39))
        icon.addChild(hIcon)
        
        let oIcon = SKSpriteNode(imageNamed: "IconO")
        oIcon.position = CGPoint(x: regraDe3ParaLargura(82), y: 0)
        oIcon.size = CGSize(width: regraDe3ParaLargura(77.36), height: regraDe3ParaAltura(77.36))
        icon.addChild(oIcon)
        
        eIcon.run(
            .repeatForever(
                .sequence(
                    [
                        .run { [weak self] in
                            guard let self = self else { return }
                            self.increaseIconAndDecrease(node: eIcon, duration: 1) {
                                self.increaseIconAndDecrease(node: cIcon, duration: 1) {
                                    self.increaseIconAndDecrease(node: hIcon, duration: 1) {
                                        self.increaseIconAndDecrease(node: oIcon, duration: 1) {
                                            {}()
                                        }
                                    }
                                }
                            }
                        },
                        .wait(forDuration: 4)
                        ]
                        )))
    }
    
    private func increaseIconAndDecrease(node: SKSpriteNode, duration: TimeInterval, completion: @escaping () -> ()) {
        node.run(.sequence([
            .scale(by: 1.1, duration: duration/2),
            .run {
                completion()
            },
            .scale(by: 0.909090909, duration: duration/2)
        ]))
    }
}
