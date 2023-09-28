//
//  GSPlayNode.swift
//  XiloLearn
//
//  Created by Pedro Mezacasa Muller on 25/09/23.
//

import Foundation
import SpriteKit

extension GameScene {
    
    /// This function plays the sound of the xilophone key and animates it.
    /// - Parameters:
    ///     - xilophoneKeyNode: The node for the xilophone key hitbox.
    func playNode(_ node: SKShapeNode){
        switch node.name {
        case "nodeA":
            node.run(SKAction.playSoundFileNamed("a", waitForCompletion: true))
            activateNode(node: node)
        case "nodeB":
            node.run(SKAction.playSoundFileNamed("b", waitForCompletion: true))
            activateNode(node: node)
        case "nodeC":
            node.run(SKAction.playSoundFileNamed("c", waitForCompletion: true))
            activateNode(node: node)
        case "nodeC2":
            node.run(SKAction.playSoundFileNamed("c2", waitForCompletion: true))
            activateNode(node: node)
        case "nodeD":
            node.run(SKAction.playSoundFileNamed("d1", waitForCompletion: true))
            activateNode(node: node)
        case "nodeE":
            node.run(SKAction.playSoundFileNamed("e1", waitForCompletion: true))
            activateNode(node: node)
        case "nodeF":
            node.run(SKAction.playSoundFileNamed("f", waitForCompletion: true))
            activateNode(node: node)
        case "nodeG":
            node.run(SKAction.playSoundFileNamed("g", waitForCompletion: true))
            activateNode(node: node)
        default:
            node.run(SKAction.wait(forDuration: 1))
        }
    }
    
    private func activateNode(node: SKShapeNode) {
        node.run(.sequence([
            .run { node.zPosition += 1 },
            .run { [weak self] in
                guard let self = self else { return }
                node.lineWidth = self.regraDe3ParaLargura(10)
            },
            .scale(by: 1.1, duration: 0.35),
            .scale(by: 0.9090909, duration: 0.35),
            .run { node.zPosition -= 1 },
            .run { node.lineWidth = 0 }
        ]))
    }
}


