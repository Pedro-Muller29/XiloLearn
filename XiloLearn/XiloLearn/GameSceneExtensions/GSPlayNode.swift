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
    func playNode(xilophoneKeyNode node: SKNode){
        #warning("Colocar as animações aqui depois")
        switch node.name {
        case "nodeA":
            node.run(SKAction.playSoundFileNamed("a", waitForCompletion: true))
            
        case "nodeB":
            node.run(SKAction.playSoundFileNamed("b", waitForCompletion: true))
            
        case "nodeC":
            node.run(SKAction.playSoundFileNamed("c", waitForCompletion: true))
            
        case "nodeC2":
            node.run(SKAction.playSoundFileNamed("c2", waitForCompletion: true))
            
        case "nodeD":
            node.run(SKAction.playSoundFileNamed("d1", waitForCompletion: true))
      
        case "nodeE":
            node.run(SKAction.playSoundFileNamed("e1", waitForCompletion: true))
            
        case "nodeF":
            node.run(SKAction.playSoundFileNamed("f", waitForCompletion: true))
            
        case "nodeG":
            node.run(SKAction.playSoundFileNamed("g", waitForCompletion: true))
            
        default:
            node.run(SKAction.wait(forDuration: 1))
        }
    }
    
}
