//
//  GSPlayNode.swift
//  XiloLearn
//
//  Created by Pedro Mezacasa Muller on 25/09/23.
//

import Foundation
import SpriteKit

extension GameScene {
    
    func playNode(node: SKNode){
        switch node.name {
        case "nodeA":
            node.run(SKAction.playSoundFileNamed("a", waitForCompletion: true))
            
        case "nodeB":
            node.run(SKAction.playSoundFileNamed("b", waitForCompletion: true))
            
        case "nodeC":
            node.run(SKAction.playSoundFileNamed("c", waitForCompletion: true))
            
        case "nodeC2":
            node.run(SKAction.playSoundFileNamed("c2", waitForCompletion: true))
            
        case "nodeD1":
            node.run(SKAction.playSoundFileNamed("d1", waitForCompletion: true))
      
        case "nodeE1":
            node.run(SKAction.playSoundFileNamed("e1", waitForCompletion: true))
            
        case "nodeF":
            node.run(SKAction.playSoundFileNamed("f", waitForCompletion: true))
            
        case "nodeG":
            node.run(SKAction.playSoundFileNamed("g", waitForCompletion: true))
            
        default:
            node.run(SKAction.playSoundFileNamed("sweep", waitForCompletion: true))
        }
    }
    
}
