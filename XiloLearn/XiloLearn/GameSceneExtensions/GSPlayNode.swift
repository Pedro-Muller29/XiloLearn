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
            /// play sound
            node.run(SKAction.playSoundFileNamed("a", waitForCompletion: true))
                
            /// play haptics
            hapticManager.playHaptic(intensity: 1, sharpness: 0.0)
            
        case "nodeB":
            node.run(SKAction.playSoundFileNamed("b", waitForCompletion: true))
                
            hapticManager.playHaptic(intensity: 1, sharpness: 0.12)
            
        case "nodeC":
            node.run(SKAction.playSoundFileNamed("c", waitForCompletion: true))
                
            hapticManager.playHaptic(intensity: 1, sharpness: 0.25)
            
        case "nodeC2":
            node.run(SKAction.playSoundFileNamed("c2", waitForCompletion: true))
                
            hapticManager.playHaptic(intensity: 1, sharpness: 0.30)
            
        case "nodeD":
            node.run(SKAction.playSoundFileNamed("d1", waitForCompletion: true))
                
            hapticManager.playHaptic(intensity: 1, sharpness: 0.40)
      
        case "nodeE":
            node.run(SKAction.playSoundFileNamed("e1", waitForCompletion: true))
                
            hapticManager.playHaptic(intensity: 1, sharpness: 0.50)
            
        case "nodeF":
            node.run(SKAction.playSoundFileNamed("f", waitForCompletion: true))
                
            hapticManager.playHaptic(intensity: 1, sharpness: 0.60)
            
        case "nodeG":
            node.run(SKAction.playSoundFileNamed("g", waitForCompletion: true))
                
            hapticManager.playHaptic(intensity: 1, sharpness: 0.70)
            
        default:
            node.run(SKAction.wait(forDuration: 1))
        }
    }
    
}
